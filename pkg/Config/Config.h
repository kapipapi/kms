//
// Created by Kacper on 07/10/2021.
//

#ifndef KMS_CONFIG_H
#define KMS_CONFIG_H

#include <string>

class Config {
public:
    Config();
    Config(std::string path);

    int n;
    double N;
    double m;
    double epsilon;
    double R;
    double f;
    double L;
    double a;
    double T_0;
    double tau;
    double S_o;
    double S_d;
    double S_out;
    double S_xyz;
};


#endif //KMS_CONFIG_H
