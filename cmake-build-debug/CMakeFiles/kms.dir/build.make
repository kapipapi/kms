# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kacper/CLionProjects/kms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kacper/CLionProjects/kms/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/kms.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kms.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kms.dir/flags.make

CMakeFiles/kms.dir/main.cpp.o: CMakeFiles/kms.dir/flags.make
CMakeFiles/kms.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kacper/CLionProjects/kms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kms.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kms.dir/main.cpp.o -c /Users/kacper/CLionProjects/kms/main.cpp

CMakeFiles/kms.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kms.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kacper/CLionProjects/kms/main.cpp > CMakeFiles/kms.dir/main.cpp.i

CMakeFiles/kms.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kms.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kacper/CLionProjects/kms/main.cpp -o CMakeFiles/kms.dir/main.cpp.s

CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o: CMakeFiles/kms.dir/flags.make
CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o: ../pkg/Molecule/Molecule.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kacper/CLionProjects/kms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.o -c /Users/kacper/CLionProjects/kms/pkg/Molecule/Molecule.cpp

CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kacper/CLionProjects/kms/pkg/Molecule/Molecule.cpp > CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.i

CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kacper/CLionProjects/kms/pkg/Molecule/Molecule.cpp -o CMakeFiles/kms.dir/pkg/Molecule/Molecule.cpp.s

CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o: CMakeFiles/kms.dir/flags.make
CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o: ../pkg/Crystal/Crystal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kacper/CLionProjects/kms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.o -c /Users/kacper/CLionProjects/kms/pkg/Crystal/Crystal.cpp

CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kacper/CLionProjects/kms/pkg/Crystal/Crystal.cpp > CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.i

CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kacper/CLionProjects/kms/pkg/Crystal/Crystal.cpp -o CMakeFiles/kms.dir/pkg/Crystal/Crystal.cpp.s

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
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kacper/CLionProjects/kms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable kms"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kms.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kms.dir/build: kms

.PHONY : CMakeFiles/kms.dir/build

CMakeFiles/kms.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kms.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kms.dir/clean

CMakeFiles/kms.dir/depend:
	cd /Users/kacper/CLionProjects/kms/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kacper/CLionProjects/kms /Users/kacper/CLionProjects/kms /Users/kacper/CLionProjects/kms/cmake-build-debug /Users/kacper/CLionProjects/kms/cmake-build-debug /Users/kacper/CLionProjects/kms/cmake-build-debug/CMakeFiles/kms.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kms.dir/depend

