//
// Created by wuthrust on 06.10.2021.
//

#include "Crystal.h"

Crystal::Crystal(int n, double a, double T0, double m) {
    this->n = n;
    this->a = a;
    this->T0 = T0;
    this->m = m;

    // pdf eq (4)
    b0 = Eigen::Vector3d{a, 0, 0};
    b1 = Eigen::Vector3d{a / 2, (a * sqrt(3)) / 2, 0};
    b2 = Eigen::Vector3d{a / 2, (a * sqrt(3)) / 2, a * sqrt((double) 2 / 3)};
}

void Crystal::generateMolecules() {
    for (int i0 = 0; i0 < n - 1; i0++) {
        for (int i1 = 0; i1 < n - 1; i1++) {
            for (int i2 = 0; i2 < n - 1; i2++) {
                int i = i0 + i1 * n + i2 * n * n;

                // Get position
                auto r = (i0 - (n - 1) / 2) * b0 + (i1 - (n - 1) / 2) * b1 + (i2 - (n - 1) / 2) * b2; // pdf eq (5)

                // Get momentum
                double sign;
                if ((double) random() / RAND_MAX >= 0.5) sign = 1;
                else sign = -1;
                auto p = Eigen::Vector3d{
                        sign * sqrt(2 * m * randomKineticEnergy()),
                        sign * sqrt(2 * m * randomKineticEnergy()),
                        sign * sqrt(2 * m * randomKineticEnergy())
                };

                molecules.push_back(new Molecule(i, r));
            }
        }
    }
}

double Crystal::randomKineticEnergy() const {
    double k_b = 8.31 * pow(10, -3);
    return -0.5 * k_b * T0 * log(1 - (double) random() / RAND_MAX);
}
