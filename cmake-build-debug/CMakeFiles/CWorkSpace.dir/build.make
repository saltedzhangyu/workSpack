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
CMAKE_SOURCE_DIR = E:\CWorkSpace

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\CWorkSpace\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CWorkSpace.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CWorkSpace.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CWorkSpace.dir/flags.make

CMakeFiles/CWorkSpace.dir/circle/area.cpp.obj: CMakeFiles/CWorkSpace.dir/flags.make
CMakeFiles/CWorkSpace.dir/circle/area.cpp.obj: ../circle/area.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CWorkSpace\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CWorkSpace.dir/circle/area.cpp.obj"
	D:\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CWorkSpace.dir\circle\area.cpp.obj -c E:\CWorkSpace\circle\area.cpp

CMakeFiles/CWorkSpace.dir/circle/area.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CWorkSpace.dir/circle/area.cpp.i"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CWorkSpace\circle\area.cpp > CMakeFiles\CWorkSpace.dir\circle\area.cpp.i

CMakeFiles/CWorkSpace.dir/circle/area.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CWorkSpace.dir/circle/area.cpp.s"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CWorkSpace\circle\area.cpp -o CMakeFiles\CWorkSpace.dir\circle\area.cpp.s

CMakeFiles/CWorkSpace.dir/circle/main.cpp.obj: CMakeFiles/CWorkSpace.dir/flags.make
CMakeFiles/CWorkSpace.dir/circle/main.cpp.obj: ../circle/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CWorkSpace\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CWorkSpace.dir/circle/main.cpp.obj"
	D:\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CWorkSpace.dir\circle\main.cpp.obj -c E:\CWorkSpace\circle\main.cpp

CMakeFiles/CWorkSpace.dir/circle/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CWorkSpace.dir/circle/main.cpp.i"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CWorkSpace\circle\main.cpp > CMakeFiles\CWorkSpace.dir\circle\main.cpp.i

CMakeFiles/CWorkSpace.dir/circle/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CWorkSpace.dir/circle/main.cpp.s"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CWorkSpace\circle\main.cpp -o CMakeFiles\CWorkSpace.dir\circle\main.cpp.s

CMakeFiles/CWorkSpace.dir/add/test.cpp.obj: CMakeFiles/CWorkSpace.dir/flags.make
CMakeFiles/CWorkSpace.dir/add/test.cpp.obj: ../add/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CWorkSpace\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CWorkSpace.dir/add/test.cpp.obj"
	D:\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CWorkSpace.dir\add\test.cpp.obj -c E:\CWorkSpace\add\test.cpp

CMakeFiles/CWorkSpace.dir/add/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CWorkSpace.dir/add/test.cpp.i"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CWorkSpace\add\test.cpp > CMakeFiles\CWorkSpace.dir\add\test.cpp.i

CMakeFiles/CWorkSpace.dir/add/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CWorkSpace.dir/add/test.cpp.s"
	D:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CWorkSpace\add\test.cpp -o CMakeFiles\CWorkSpace.dir\add\test.cpp.s

# Object files for target CWorkSpace
CWorkSpace_OBJECTS = \
"CMakeFiles/CWorkSpace.dir/circle/area.cpp.obj" \
"CMakeFiles/CWorkSpace.dir/circle/main.cpp.obj" \
"CMakeFiles/CWorkSpace.dir/add/test.cpp.obj"

# External object files for target CWorkSpace
CWorkSpace_EXTERNAL_OBJECTS =

CWorkSpace.exe: CMakeFiles/CWorkSpace.dir/circle/area.cpp.obj
CWorkSpace.exe: CMakeFiles/CWorkSpace.dir/circle/main.cpp.obj
CWorkSpace.exe: CMakeFiles/CWorkSpace.dir/add/test.cpp.obj
CWorkSpace.exe: CMakeFiles/CWorkSpace.dir/build.make
CWorkSpace.exe: CMakeFiles/CWorkSpace.dir/linklibs.rsp
CWorkSpace.exe: CMakeFiles/CWorkSpace.dir/objects1.rsp
CWorkSpace.exe: CMakeFiles/CWorkSpace.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\CWorkSpace\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable CWorkSpace.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CWorkSpace.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CWorkSpace.dir/build: CWorkSpace.exe

.PHONY : CMakeFiles/CWorkSpace.dir/build

CMakeFiles/CWorkSpace.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CWorkSpace.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CWorkSpace.dir/clean

CMakeFiles/CWorkSpace.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\CWorkSpace E:\CWorkSpace E:\CWorkSpace\cmake-build-debug E:\CWorkSpace\cmake-build-debug E:\CWorkSpace\cmake-build-debug\CMakeFiles\CWorkSpace.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CWorkSpace.dir/depend
