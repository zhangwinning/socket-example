# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/videojj/study/socket-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/videojj/study/socket-example

# Include any dependencies generated for this target.
include c/file/CMakeFiles/test7.dir/depend.make

# Include the progress variables for this target.
include c/file/CMakeFiles/test7.dir/progress.make

# Include the compile flags for this target's objects.
include c/file/CMakeFiles/test7.dir/flags.make

c/file/CMakeFiles/test7.dir/test7.c.o: c/file/CMakeFiles/test7.dir/flags.make
c/file/CMakeFiles/test7.dir/test7.c.o: c/file/test7.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/videojj/study/socket-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object c/file/CMakeFiles/test7.dir/test7.c.o"
	cd /Users/videojj/study/socket-example/c/file && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test7.dir/test7.c.o   -c /Users/videojj/study/socket-example/c/file/test7.c

c/file/CMakeFiles/test7.dir/test7.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test7.dir/test7.c.i"
	cd /Users/videojj/study/socket-example/c/file && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/videojj/study/socket-example/c/file/test7.c > CMakeFiles/test7.dir/test7.c.i

c/file/CMakeFiles/test7.dir/test7.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test7.dir/test7.c.s"
	cd /Users/videojj/study/socket-example/c/file && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/videojj/study/socket-example/c/file/test7.c -o CMakeFiles/test7.dir/test7.c.s

# Object files for target test7
test7_OBJECTS = \
"CMakeFiles/test7.dir/test7.c.o"

# External object files for target test7
test7_EXTERNAL_OBJECTS =

c/file/test7: c/file/CMakeFiles/test7.dir/test7.c.o
c/file/test7: c/file/CMakeFiles/test7.dir/build.make
c/file/test7: c/file/CMakeFiles/test7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/videojj/study/socket-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test7"
	cd /Users/videojj/study/socket-example/c/file && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test7.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
c/file/CMakeFiles/test7.dir/build: c/file/test7

.PHONY : c/file/CMakeFiles/test7.dir/build

c/file/CMakeFiles/test7.dir/clean:
	cd /Users/videojj/study/socket-example/c/file && $(CMAKE_COMMAND) -P CMakeFiles/test7.dir/cmake_clean.cmake
.PHONY : c/file/CMakeFiles/test7.dir/clean

c/file/CMakeFiles/test7.dir/depend:
	cd /Users/videojj/study/socket-example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/videojj/study/socket-example /Users/videojj/study/socket-example/c/file /Users/videojj/study/socket-example /Users/videojj/study/socket-example/c/file /Users/videojj/study/socket-example/c/file/CMakeFiles/test7.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : c/file/CMakeFiles/test7.dir/depend

