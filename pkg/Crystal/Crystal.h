//
// Created by wuthrust on 06.10.2021.
//

#ifndef KMS_CRYSTAL_H
#define KMS_CRYSTAL_H

#include <Eigen/Core>
#include <vector>
#include "../Molecule/Molecule.h"
#include "../Constants/Constants.h"
#include "../Config/Config.h"

class Crystal {
public:
    explicit Crystal(Config *config);

    void generateMolecules();

    double randomKineticEnergy() const;

    Eigen::Vector3d generatePosition(int i0, int i1, int i2) const;

    Eigen::Vector3d generateMomentum() const;

    static int randomSign();

    std::vector<Molecule *> getMolecules();

    void fixCenterOfMassMovement();

private:
    Config *config;
    Eigen::Vector3d b0;
    Eigen::Vector3d b1;
    Eigen::Vector3d b2;
    Eigen::Vector3d P;
    std::vector<Molecule *> molecules;
};

#endif //KMS_CRYSTAL_H
