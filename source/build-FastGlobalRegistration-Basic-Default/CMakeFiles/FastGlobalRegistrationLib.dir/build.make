# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/julia/Desktop/my_programs/FastGlobalRegistration/source/FastGlobalRegistration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/julia/Desktop/my_programs/FastGlobalRegistration/source/build-FastGlobalRegistration-Basic-Default

# Include any dependencies generated for this target.
include CMakeFiles/FastGlobalRegistrationLib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FastGlobalRegistrationLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FastGlobalRegistrationLib.dir/flags.make

CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o: CMakeFiles/FastGlobalRegistrationLib.dir/flags.make
CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o: /home/julia/Desktop/my_programs/FastGlobalRegistration/source/FastGlobalRegistration/app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/julia/Desktop/my_programs/FastGlobalRegistration/source/build-FastGlobalRegistration-Basic-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o -c /home/julia/Desktop/my_programs/FastGlobalRegistration/source/FastGlobalRegistration/app.cpp

CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/julia/Desktop/my_programs/FastGlobalRegistration/source/FastGlobalRegistration/app.cpp > CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.i

CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/julia/Desktop/my_programs/FastGlobalRegistration/source/FastGlobalRegistration/app.cpp -o CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.s

CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o.requires:

.PHONY : CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o.requires

CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o.provides: CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o.requires
	$(MAKE) -f CMakeFiles/FastGlobalRegistrationLib.dir/build.make CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o.provides.build
.PHONY : CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o.provides

CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o.provides.build: CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o


# Object files for target FastGlobalRegistrationLib
FastGlobalRegistrationLib_OBJECTS = \
"CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o"

# External object files for target FastGlobalRegistrationLib
FastGlobalRegistrationLib_EXTERNAL_OBJECTS =

libFastGlobalRegistrationLib.a: CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o
libFastGlobalRegistrationLib.a: CMakeFiles/FastGlobalRegistrationLib.dir/build.make
libFastGlobalRegistrationLib.a: CMakeFiles/FastGlobalRegistrationLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/julia/Desktop/my_programs/FastGlobalRegistration/source/build-FastGlobalRegistration-Basic-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libFastGlobalRegistrationLib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/FastGlobalRegistrationLib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FastGlobalRegistrationLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FastGlobalRegistrationLib.dir/build: libFastGlobalRegistrationLib.a

.PHONY : CMakeFiles/FastGlobalRegistrationLib.dir/build

CMakeFiles/FastGlobalRegistrationLib.dir/requires: CMakeFiles/FastGlobalRegistrationLib.dir/app.cpp.o.requires

.PHONY : CMakeFiles/FastGlobalRegistrationLib.dir/requires

CMakeFiles/FastGlobalRegistrationLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FastGlobalRegistrationLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FastGlobalRegistrationLib.dir/clean

CMakeFiles/FastGlobalRegistrationLib.dir/depend:
	cd /home/julia/Desktop/my_programs/FastGlobalRegistration/source/build-FastGlobalRegistration-Basic-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/julia/Desktop/my_programs/FastGlobalRegistration/source/FastGlobalRegistration /home/julia/Desktop/my_programs/FastGlobalRegistration/source/FastGlobalRegistration /home/julia/Desktop/my_programs/FastGlobalRegistration/source/build-FastGlobalRegistration-Basic-Default /home/julia/Desktop/my_programs/FastGlobalRegistration/source/build-FastGlobalRegistration-Basic-Default /home/julia/Desktop/my_programs/FastGlobalRegistration/source/build-FastGlobalRegistration-Basic-Default/CMakeFiles/FastGlobalRegistrationLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FastGlobalRegistrationLib.dir/depend

