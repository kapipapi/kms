//
// Created by wuthrust on 06.10.2021.
//

#ifndef KMS_CRYSTAL_H
#define KMS_CRYSTAL_H

#include <Eigen/Core>
#include <vector>
#include "../Molecule/Molecule.h"

class Crystal {
public:
    explicit Crystal(int n, double a, double T0, double m);

    void generateMolecules();

    double randomKineticEnergy() const;

    Eigen::Vector3d generatePosition(int i0, int i1, int i2) const;

    Eigen::Vector3d generateMomentum() const;

    static int randomSign();

    std::vector<Molecule *> getMolecules();

private:
    int n;
    double a;
    double T0;
    double m;
    Eigen::Vector3d b0;
    Eigen::Vector3d b1;
    Eigen::Vector3d b2;
    std::vector<Molecule *> molecules;
};

#endif //KMS_CRYSTAL_H
