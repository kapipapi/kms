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

    Eigen::Vector3d generateMomentum(double m) const;

    static int randomSign();

    std::vector<Molecule *> getMolecules();

    void fixCenterOfMassMovement();

    void calculatePotentialEnergyAndForces();

    double calculateVanDerWaalsPotential(int i, int j);

    double calculateSafeSpherePotential(int i);

    void calculateForcesOnMolecules(int i);

    Eigen::Vector3d calculateVanDerWaalsForce(int i, int j);

    Eigen::Vector3d calculateSafeSphereForce(int i);

    Config* getConfig();

    double getPotential();

private:
    Config *config;
    Eigen::Vector3d b0;
    Eigen::Vector3d b1;
    Eigen::Vector3d b2;
    std::vector<Molecule *> molecules;
    Eigen::Vector3d P;
    double Pressure;
    double V;
};

#endif //KMS_CRYSTAL_H
