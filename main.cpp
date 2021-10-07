#include "pkg/Molecule/Molecule.h"
#include "pkg/Crystal/Crystal.h"
#include "pkg/Config/Config.h"

int main() {
    Config config{};
    Crystal c(&config);

    c.generateMolecules();
    c.fixCenterOfMassMovement();
    c.calculatePotentialEnergyAndForces();


    return 0;
}
