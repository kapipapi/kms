//
// Created by wuthrust on 06.10.2021.
//

#include "Molecule.h"

#include <utility>

Eigen::Vector3d Molecule::getPosition() {
    return this->r;
}

Eigen::Vector3d Molecule::getMomentum() {
    return this->p;
}

void Molecule::setMomentum(Eigen::Vector3d new_p) {
    this->p = std::move(new_p);
}

void Molecule::setForce(Eigen::Vector3d new_F) {
    this->F = std::move(new_F);
}

void Molecule::setVanDerWaalsForce(Eigen::Vector3d new_F) {
    this->F_p = std::move(new_F);
}

Eigen::Vector3d Molecule::getVanDerWaalsForce() {
    return this->F_p;
}
