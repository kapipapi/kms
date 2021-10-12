//
// Created by wuthrust on 12.10.2021.
//

#include "Simulator.h"

Simulator::Simulator() {
    this->T = 0;
    this->H = 0;

    Config config{};
    this->c = new Crystal(&config);

    this->c->generateMolecules();
    this->c->fixCenterOfMassMovement();
    this->c->calculatePotentialEnergyAndForces();
}

void Simulator::step() {
    double tau = this->c->getConfig()->tau;
    double N = this->c->getConfig()->N;

    for (auto molecule : this->c->getMolecules()) {
        molecule->modifyMomentum(0.5 * tau);
        molecule->modifyPositions(tau);
    }

    this->c->calculatePotentialEnergyAndForces();

    for (auto molecule : this->c->getMolecules()) {
        // pdf (18c)
        molecule->modifyMomentum(0.5 * tau);
        
        // pdf (16)
        auto E_kin = 0.5 * pow(molecule->getMomentum().norm(), 2) / molecule->getMass();
        this->H += E_kin;

        // pdf (19)
        this->T += 2 / (3 * N * Constants::k_b) * E_kin;
    }
    this->H += this->c->getPotential();

}
