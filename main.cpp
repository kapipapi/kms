#include "pkg/Molecule/Molecule.h"
#include "pkg/Crystal/Crystal.h"
#include "pkg/Config/Config.h"

int main() {
    Config config{};
    Crystal c(&config);
    c.generateMolecules();
    c.fixCenterOfMassMovement();

    for (auto molecule : c.getMolecules()) {
        auto r = molecule->getPosition();
        auto p = molecule->getMomentum();
//        printf("%f %f %f\n", r.x(), r.y(), r.z());
        printf("%f %f %f\n", p.x(), p.y(), p.z());
    }

    return 0;
}
