#include "pkg/Molecule/Molecule.h"
#include "pkg/Crystal/Crystal.h"

int main() {
    int n = 5;
    double a = 0.38;
    double T0 = 1000;
    double m = 1;

    Crystal c(n, a, T0, m);
    c.generateMolecules();

    for (auto molecule : c.molecules) {
        auto r = molecule->getPosition();
        auto p = molecule->getMomentum();
//        printf("%f %f %f\n", r.x(), r.y(), r.z());
        printf("%f %f %f\n", p.x(), p.y(), p.z());
    }

    return 0;
}
