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
CMAKE_SOURCE_DIR = E:\CWorkSpace\switch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\CWorkSpace\switch\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/switch.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/switch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/switch.dir/flags.make

CMakeFiles/switch.dir/main.cpp.obj: CMakeFiles/switch.dir/flags.make
CMakeFiles/switch.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CWorkSpace\switch\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/switch.dir/main.cpp.obj"
	D:\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\switch.dir\main.cpp.obj -c E:\CWorkSpace\switch\main.cpp

CMakeFiles/switch.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/switch.dir/main.cpp.i"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CWorkSpace\switch\main.cpp > CMakeFiles\switch.dir\main.cpp.i

CMakeFiles/switch.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/switch.dir/main.cpp.s"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CWorkSpace\switch\main.cpp -o CMakeFiles\switch.dir\main.cpp.s

# Object files for target switch
switch_OBJECTS = \
"CMakeFiles/switch.dir/main.cpp.obj"

# External object files for target switch
switch_EXTERNAL_OBJECTS =

switch.exe: CMakeFiles/switch.dir/main.cpp.obj
switch.exe: CMakeFiles/switch.dir/build.make
switch.exe: CMakeFiles/switch.dir/linklibs.rsp
switch.exe: CMakeFiles/switch.dir/objects1.rsp
switch.exe: CMakeFiles/switch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\CWorkSpace\switch\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable switch.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\switch.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/switch.dir/build: switch.exe

.PHONY : CMakeFiles/switch.dir/build

CMakeFiles/switch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\switch.dir\cmake_clean.cmake
.PHONY : CMakeFiles/switch.dir/clean

CMakeFiles/switch.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\CWorkSpace\switch E:\CWorkSpace\switch E:\CWorkSpace\switch\cmake-build-debug E:\CWorkSpace\switch\cmake-build-debug E:\CWorkSpace\switch\cmake-build-debug\CMakeFiles\switch.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/switch.dir/depend

