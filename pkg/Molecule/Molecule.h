//
// Created by wuthrust on 06.10.2021.
//

#ifndef KMS_MOLECULE_H
#define KMS_MOLECULE_H

#include <Eigen/Core>
#include <utility>

class Molecule {
public:
    Molecule(int i, Eigen::Vector3d r) : i(i), r(std::move(r)) {};

    Eigen::Vector3d getPosition();

private:
    int i;
    Eigen::Vector3d r;
};

#endif //KMS_MOLECULE_H
