//
// Created by wuthrust on 06.10.2021.
//

#include "Molecule.h"

Eigen::Vector3d Molecule::getPosition() {
    return this->r;
}

Eigen::Vector3d Molecule::getMomentum() {
    return this->p;
}

void Molecule::setMomentum(Eigen::Vector3d new_p) {
    this->p = new_p;
}
