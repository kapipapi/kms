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
