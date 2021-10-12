//
// Created by wuthrust on 06.10.2021.
//

#include "Crystal.h"

Crystal::Crystal(Config *config) {
    this->config = config;
    // pdf eq (4)
    auto a = config->a;
    b0 = Eigen::Vector3d{a, 0, 0};
    b1 = Eigen::Vector3d{a / 2, (a * sqrt(3)) / 2, 0};
    b2 = Eigen::Vector3d{a / 2, (a * sqrt(3)) / 2, a * sqrt((double) 2 / 3)};
}

void Crystal::generateMolecules() {
    printf("Generating molecules.\n");
    auto n = config->n;
    for (int i0 = 0; i0 < n; i0++) {
        for (int i1 = 0; i1 < n; i1++) {
            for (int i2 = 0; i2 < n; i2++) {
                int i = i0 + i1 * n + i2 * n * n;
                auto p = generateMomentum();
                this->P += p;
                molecules.push_back(
                        new Molecule(
                                i,
                                generatePosition(i0, i1, i2),
                                p
                        )
                );
            }
        }
    }
}

double Crystal::randomKineticEnergy() const {
    return -0.5 * Constants::k_b * config->T_0 * log(1 - (double) random() / RAND_MAX);
}

Eigen::Vector3d Crystal::generatePosition(int i0, int i1, int i2) const {
    auto n = config->n;
    return (i0 - (n - 1) / 2) * b0 + (i1 - (n - 1) / 2) * b1 + (i2 - (n - 1) / 2) * b2; // pdf eq (5)
}

int Crystal::randomSign() {
    if ((double) random() / RAND_MAX >= 0.5) return 1;
    else return -1;
}

Eigen::Vector3d Crystal::generateMomentum() const {
    return Eigen::Vector3d{
            randomSign() * sqrt(2 * config->m * randomKineticEnergy()),
            randomSign() * sqrt(2 * config->m * randomKineticEnergy()),
            randomSign() * sqrt(2 * config->m * randomKineticEnergy())
    };
}

std::vector<Molecule *> Crystal::getMolecules() {
    return molecules;
}

void Crystal::fixCenterOfMassMovement() {
    printf("Eliminating Center of Mass movement.\n");
    // pdf (8)
    auto tmpP = this->P / config->N;
    for (auto molecule : molecules) {
        molecule->setMomentum(molecule->getMomentum() - tmpP);
    }
}

void Crystal::calculatePotentialEnergyAndForces() {
    double Vp_sum = 0;
    double Vs_sum = 0;
    for (int i = 0; i < config->N; i++) {
        if (i > 1) {
            for (int j = 0; j < i; j++) {
                // pdf (9)
                Vp_sum += calculateVanDerWaalsPotential(i, j);
            }
        }
        // pdf (10)
        Vs_sum += calculateSafeSpherePotential(i);
        // pdf (14)
        calculateForcesOnMolecules(i);
    }
    // pdf (15)
    this->V = Vp_sum + Vs_sum;
}

double Crystal::calculateVanDerWaalsPotential(int i, int j) {
    auto r_i = molecules[i]->getPosition();
    auto r_j = molecules[j]->getPosition();
    double r_ij_norm = (r_i - r_j).norm();

    return config->epsilon * (pow(config->R / r_ij_norm, 12) - 2 * pow(config->R / r_ij_norm, 6));
}

double Crystal::calculateSafeSpherePotential(int i) {
    // pdf (10)
    double r_i_norm = molecules[i]->getPosition().norm();
    if (r_i_norm < config->L) return 0;
    return 0.5 * config->f * pow(r_i_norm - config->L, 2);
}

void Crystal::calculateForcesOnMolecules(int i) {
    // pdf (14)
    Eigen::Vector3d Fp_i;
    Eigen::Vector3d F_i = calculateSafeSphereForce(i);

    // calculate wall pressure - pdf (15)
    this->Pressure += (1 / (4 * M_PI * pow(config->L, 2))) * F_i.norm();

    for (int j = 0; j < config->N; j++) {
        if (i != j) {
            // pdf (13)
            Fp_i = calculateVanDerWaalsForce(i, j);
            F_i += Fp_i;
        }
    }
    molecules[i]->setForce(F_i);
    molecules[i]->setVanDerWaalsForce(Fp_i);
}

Eigen::Vector3d Crystal::calculateVanDerWaalsForce(int i, int j) {
    auto Fp_j = molecules[j]->getVanDerWaalsForce();
    if (Fp_j != Eigen::Vector3d{}) {
        return -Fp_j;
    }

    auto r_i = molecules[i]->getPosition();
    auto r_j = molecules[j]->getPosition();
    double r_ij_norm = (r_i - r_j).norm();

    return 12 * config->epsilon * (pow(config->R / r_ij_norm, 12) - pow(config->R / r_ij_norm, 6)) *
           ((r_i - r_j) / pow(r_ij_norm, 2));
}

Eigen::Vector3d Crystal::calculateSafeSphereForce(int i) {
    auto r_i = molecules[i]->getPosition();
    if (r_i.norm() < config->L) return Eigen::Vector3d{0, 0, 0};
    return config->f * (config->L - r_i.norm()) * (r_i / r_i.norm());
}