# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2020.1.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2020.1.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\CWorkSpace\equation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\CWorkSpace\equation\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/equation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/equation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/equation.dir/flags.make

CMakeFiles/equation.dir/main.cpp.obj: CMakeFiles/equation.dir/flags.make
CMakeFiles/equation.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CWorkSpace\equation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/equation.dir/main.cpp.obj"
	D:\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\equation.dir\main.cpp.obj -c E:\CWorkSpace\equation\main.cpp

CMakeFiles/equation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/equation.dir/main.cpp.i"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CWorkSpace\equation\main.cpp > CMakeFiles\equation.dir\main.cpp.i

CMakeFiles/equation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/equation.dir/main.cpp.s"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CWorkSpace\equation\main.cpp -o CMakeFiles\equation.dir\main.cpp.s

# Object files for target equation
equation_OBJECTS = \
"CMakeFiles/equation.dir/main.cpp.obj"

# External object files for target equation
equation_EXTERNAL_OBJECTS =

equation.exe: CMakeFiles/equation.dir/main.cpp.obj
equation.exe: CMakeFiles/equation.dir/build.make
equation.exe: CMakeFiles/equation.dir/linklibs.rsp
equation.exe: CMakeFiles/equation.dir/objects1.rsp
equation.exe: CMakeFiles/equation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\CWorkSpace\equation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable equation.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\equation.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/equation.dir/build: equation.exe

.PHONY : CMakeFiles/equation.dir/build

CMakeFiles/equation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\equation.dir\cmake_clean.cmake
.PHONY : CMakeFiles/equation.dir/clean

CMakeFiles/equation.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\CWorkSpace\equation E:\CWorkSpace\equation E:\CWorkSpace\equation\cmake-build-debug E:\CWorkSpace\equation\cmake-build-debug E:\CWorkSpace\equation\cmake-build-debug\CMakeFiles\equation.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/equation.dir/depend

