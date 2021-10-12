//
// Created by wuthrust on 06.10.2021.
//

#ifndef KMS_MOLECULE_H
#define KMS_MOLECULE_H

#include <Eigen/Core>
#include <utility>

class Molecule {
public:
    Molecule(int i, Eigen::Vector3d r, Eigen::Vector3d p, double m) : i(i), r(std::move(r)), p(std::move(p)), m(m) {};

    Eigen::Vector3d getPosition();

    Eigen::Vector3d getMomentum();

    void setMomentum(Eigen::Vector3d new_p);

    void setForce(Eigen::Vector3d new_F);

    void setVanDerWaalsForce(Eigen::Vector3d new_F);

    Eigen::Vector3d getVanDerWaalsForce();

    void modifyMomentum(double tau);

    void modifyPositions(double tau);

    double getMass();

private:
    int i;
    Eigen::Vector3d r;
    Eigen::Vector3d p;
    double m;
    Eigen::Vector3d F;
    Eigen::Vector3d F_p;
};

#endif //KMS_MOLECULE_H
