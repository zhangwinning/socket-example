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
include 01-simple_socket_example/CMakeFiles/01-server.dir/depend.make

# Include the progress variables for this target.
include 01-simple_socket_example/CMakeFiles/01-server.dir/progress.make

# Include the compile flags for this target's objects.
include 01-simple_socket_example/CMakeFiles/01-server.dir/flags.make

01-simple_socket_example/CMakeFiles/01-server.dir/server.c.o: 01-simple_socket_example/CMakeFiles/01-server.dir/flags.make
01-simple_socket_example/CMakeFiles/01-server.dir/server.c.o: 01-simple_socket_example/server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/videojj/study/socket-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 01-simple_socket_example/CMakeFiles/01-server.dir/server.c.o"
	cd /Users/videojj/study/socket-example/01-simple_socket_example && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/01-server.dir/server.c.o   -c /Users/videojj/study/socket-example/01-simple_socket_example/server.c

01-simple_socket_example/CMakeFiles/01-server.dir/server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/01-server.dir/server.c.i"
	cd /Users/videojj/study/socket-example/01-simple_socket_example && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/videojj/study/socket-example/01-simple_socket_example/server.c > CMakeFiles/01-server.dir/server.c.i

01-simple_socket_example/CMakeFiles/01-server.dir/server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/01-server.dir/server.c.s"
	cd /Users/videojj/study/socket-example/01-simple_socket_example && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/videojj/study/socket-example/01-simple_socket_example/server.c -o CMakeFiles/01-server.dir/server.c.s

# Object files for target 01-server
01__server_OBJECTS = \
"CMakeFiles/01-server.dir/server.c.o"

# External object files for target 01-server
01__server_EXTERNAL_OBJECTS =

01-simple_socket_example/01-server: 01-simple_socket_example/CMakeFiles/01-server.dir/server.c.o
01-simple_socket_example/01-server: 01-simple_socket_example/CMakeFiles/01-server.dir/build.make
01-simple_socket_example/01-server: 01-simple_socket_example/CMakeFiles/01-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/videojj/study/socket-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 01-server"
	cd /Users/videojj/study/socket-example/01-simple_socket_example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/01-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
01-simple_socket_example/CMakeFiles/01-server.dir/build: 01-simple_socket_example/01-server

.PHONY : 01-simple_socket_example/CMakeFiles/01-server.dir/build

01-simple_socket_example/CMakeFiles/01-server.dir/clean:
	cd /Users/videojj/study/socket-example/01-simple_socket_example && $(CMAKE_COMMAND) -P CMakeFiles/01-server.dir/cmake_clean.cmake
.PHONY : 01-simple_socket_example/CMakeFiles/01-server.dir/clean

01-simple_socket_example/CMakeFiles/01-server.dir/depend:
	cd /Users/videojj/study/socket-example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/videojj/study/socket-example /Users/videojj/study/socket-example/01-simple_socket_example /Users/videojj/study/socket-example /Users/videojj/study/socket-example/01-simple_socket_example /Users/videojj/study/socket-example/01-simple_socket_example/CMakeFiles/01-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 01-simple_socket_example/CMakeFiles/01-server.dir/depend

