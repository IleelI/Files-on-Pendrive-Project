# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = "/Users/volcent/Library/Application Support/JetBrains/Toolbox/apps/CLion-ARM/ch-0/203.7717.62/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/volcent/Library/Application Support/JetBrains/Toolbox/apps/CLion-ARM/ch-0/203.7717.62/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/1__Files_on_Pendrive.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/1__Files_on_Pendrive.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1__Files_on_Pendrive.dir/flags.make

CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.o: CMakeFiles/1__Files_on_Pendrive.dir/flags.make
CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.o -c "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/main.cpp"

CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/main.cpp" > CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.i

CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/main.cpp" -o CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.s

# Object files for target 1__Files_on_Pendrive
1__Files_on_Pendrive_OBJECTS = \
"CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.o"

# External object files for target 1__Files_on_Pendrive
1__Files_on_Pendrive_EXTERNAL_OBJECTS =

1__Files_on_Pendrive: CMakeFiles/1__Files_on_Pendrive.dir/main.cpp.o
1__Files_on_Pendrive: CMakeFiles/1__Files_on_Pendrive.dir/build.make
1__Files_on_Pendrive: CMakeFiles/1__Files_on_Pendrive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 1__Files_on_Pendrive"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/1__Files_on_Pendrive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1__Files_on_Pendrive.dir/build: 1__Files_on_Pendrive

.PHONY : CMakeFiles/1__Files_on_Pendrive.dir/build

CMakeFiles/1__Files_on_Pendrive.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/1__Files_on_Pendrive.dir/cmake_clean.cmake
.PHONY : CMakeFiles/1__Files_on_Pendrive.dir/clean

CMakeFiles/1__Files_on_Pendrive.dir/depend:
	cd "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive" "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive" "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/cmake-build-debug" "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/cmake-build-debug" "/Users/volcent/Documents/Studia/Projekty/AiSD/1. Files on Pendrive/cmake-build-debug/CMakeFiles/1__Files_on_Pendrive.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/1__Files_on_Pendrive.dir/depend
