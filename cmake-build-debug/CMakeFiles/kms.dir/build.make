# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wuthrust/CLionProjects/kms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wuthrust/CLionProjects/kms/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/kms.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kms.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kms.dir/flags.make

CMakeFiles/kms.dir/main.cpp.o: CMakeFiles/kms.dir/flags.make
CMakeFiles/kms.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wuthrust/CLionProjects/kms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kms.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kms.dir/main.cpp.o -c /home/wuthrust/CLionProjects/kms/main.cpp

CMakeFiles/kms.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kms.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wuthrust/CLionProjects/kms/main.cpp > CMakeFiles/kms.dir/main.cpp.i

CMakeFiles/kms.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kms.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wuthrust/CLionProjects/kms/main.cpp -o CMakeFiles/kms.dir/main.cpp.s

CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o: CMakeFiles/kms.dir/flags.make
CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o: ../pkg/Molecule/Molecule.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wuthrust/CLionProjects/kms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o -c /home/wuthrust/CLionProjects/kms/pkg/Molecule/Molecule.cpp

CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wuthrust/CLionProjects/kms/pkg/Molecule/Molecule.cpp > CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.i

CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wuthrust/CLionProjects/kms/pkg/Molecule/Molecule.cpp -o CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.s

CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o: CMakeFiles/kms.dir/flags.make
CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o: ../pkg/Crystal/Crystal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wuthrust/CLionProjects/kms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o -c /home/wuthrust/CLionProjects/kms/pkg/Crystal/Crystal.cpp

CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wuthrust/CLionProjects/kms/pkg/Crystal/Crystal.cpp > CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.i

CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wuthrust/CLionProjects/kms/pkg/Crystal/Crystal.cpp -o CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.s

# Object files for target kms
kms_OBJECTS = \
"CMakeFiles/kms.dir/main.cpp.o" \
"CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o" \
"CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o"

# External object files for target kms
kms_EXTERNAL_OBJECTS =

kms: CMakeFiles/kms.dir/main.cpp.o
kms: CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o
kms: CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o
kms: CMakeFiles/kms.dir/build.make
kms: CMakeFiles/kms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wuthrust/CLionProjects/kms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable kms"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kms.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kms.dir/build: kms

.PHONY : CMakeFiles/kms.dir/build

CMakeFiles/kms.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kms.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kms.dir/clean

CMakeFiles/kms.dir/depend:
	cd /home/wuthrust/CLionProjects/kms/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wuthrust/CLionProjects/kms /home/wuthrust/CLionProjects/kms /home/wuthrust/CLionProjects/kms/cmake-build-debug /home/wuthrust/CLionProjects/kms/cmake-build-debug /home/wuthrust/CLionProjects/kms/cmake-build-debug/CMakeFiles/kms.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kms.dir/depend

