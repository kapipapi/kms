//
// Created by wuthrust on 06.10.2021.
//

#ifndef KMS_MOLECULE_H
#define KMS_MOLECULE_H

#include <Eigen/Core>
#include <utility>

class Molecule {
public:
    Molecule(int i, Eigen::Vector3d r, Eigen::Vector3d p) : i(i), r(std::move(r)), p(std::move(p)) {};

    Eigen::Vector3d getPosition();
    Eigen::Vector3d getMomentum();

private:
    int i;
    Eigen::Vector3d r;
    Eigen::Vector3d p;
};

#endif //KMS_MOLECULE_H
