cmake_minimum_required(VERSION 3.16)
project(kms)

set(CMAKE_CXX_STANDARD 14)

find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIR})

add_executable(kms main.cpp
    pkg/Molecule/Molecule.cpp pkg/Molecule/Molecule.h
    pkg/Crystal/Crystal.cpp pkg/Crystal/Crystal.h
    pkg/Constants/Constants.h
    pkg/Config/Config.cpp pkg/Config/Config.h
        pkg/Simulator/Simulator.cpp pkg/Simulator/Simulator.h)