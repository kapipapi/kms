//
// Created by Kacper on 07/10/2021.
//

#include <cmath>
#include "Config.h"

Config::Config() {
    printf("Generating initial config.\n");
    n = 3;
    N = pow(n, 3);
    m = 1;
    epsilon = 1;
    R = 0.38;
    f = 1e4;
    L = 1.2;
    a = 0.38;
    T_0 = 1000;
    tau = 2e-3;
    S_o = 100;
    S_d = 2000;
    S_out = 10;
    S_xyz = 10;
}

Config::Config(std::string path) {
    printf("Reading config file from path: %s\n", path.c_str());
    printf("Config file reading not implemented!\n");
    exit(-1);
}

