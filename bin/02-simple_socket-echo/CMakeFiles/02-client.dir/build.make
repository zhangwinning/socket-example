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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/videojj/study/socket-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/videojj/study/socket-example/bin

# Include any dependencies generated for this target.
include 02-simple_socket-echo/CMakeFiles/02-client.dir/depend.make

# Include the progress variables for this target.
include 02-simple_socket-echo/CMakeFiles/02-client.dir/progress.make

# Include the compile flags for this target's objects.
include 02-simple_socket-echo/CMakeFiles/02-client.dir/flags.make

02-simple_socket-echo/CMakeFiles/02-client.dir/client.c.o: 02-simple_socket-echo/CMakeFiles/02-client.dir/flags.make
02-simple_socket-echo/CMakeFiles/02-client.dir/client.c.o: ../02-simple_socket-echo/client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/videojj/study/socket-example/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object 02-simple_socket-echo/CMakeFiles/02-client.dir/client.c.o"
	cd /Users/videojj/study/socket-example/bin/02-simple_socket-echo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/02-client.dir/client.c.o   -c /Users/videojj/study/socket-example/02-simple_socket-echo/client.c

02-simple_socket-echo/CMakeFiles/02-client.dir/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/02-client.dir/client.c.i"
	cd /Users/videojj/study/socket-example/bin/02-simple_socket-echo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/videojj/study/socket-example/02-simple_socket-echo/client.c > CMakeFiles/02-client.dir/client.c.i

02-simple_socket-echo/CMakeFiles/02-client.dir/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/02-client.dir/client.c.s"
	cd /Users/videojj/study/socket-example/bin/02-simple_socket-echo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/videojj/study/socket-example/02-simple_socket-echo/client.c -o CMakeFiles/02-client.dir/client.c.s

# Object files for target 02-client
02__client_OBJECTS = \
"CMakeFiles/02-client.dir/client.c.o"

# External object files for target 02-client
02__client_EXTERNAL_OBJECTS =

02-simple_socket-echo/02-client: 02-simple_socket-echo/CMakeFiles/02-client.dir/client.c.o
02-simple_socket-echo/02-client: 02-simple_socket-echo/CMakeFiles/02-client.dir/build.make
02-simple_socket-echo/02-client: 02-simple_socket-echo/CMakeFiles/02-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/videojj/study/socket-example/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 02-client"
	cd /Users/videojj/study/socket-example/bin/02-simple_socket-echo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/02-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
02-simple_socket-echo/CMakeFiles/02-client.dir/build: 02-simple_socket-echo/02-client

.PHONY : 02-simple_socket-echo/CMakeFiles/02-client.dir/build

02-simple_socket-echo/CMakeFiles/02-client.dir/clean:
	cd /Users/videojj/study/socket-example/bin/02-simple_socket-echo && $(CMAKE_COMMAND) -P CMakeFiles/02-client.dir/cmake_clean.cmake
.PHONY : 02-simple_socket-echo/CMakeFiles/02-client.dir/clean

02-simple_socket-echo/CMakeFiles/02-client.dir/depend:
	cd /Users/videojj/study/socket-example/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/videojj/study/socket-example /Users/videojj/study/socket-example/02-simple_socket-echo /Users/videojj/study/socket-example/bin /Users/videojj/study/socket-example/bin/02-simple_socket-echo /Users/videojj/study/socket-example/bin/02-simple_socket-echo/CMakeFiles/02-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 02-simple_socket-echo/CMakeFiles/02-client.dir/depend

