//
// Created by wuthrust on 12.10.2021.
//

#ifndef KMS_SIMULATOR_H
#define KMS_SIMULATOR_H

#include "../Config/Config.h"
#include "../Crystal/Crystal.h"

class Simulator {
public:
    Simulator();

    void step();

private:
    Crystal *c;
    double T;
    double H;
};

#endif //KMS_SIMULATOR_H
