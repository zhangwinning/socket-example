# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/videojj/study/socket-example/CMakeFiles /Users/videojj/study/socket-example/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/videojj/study/socket-example/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named test4

# Build rule for target.
test4: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test4
.PHONY : test4

# fast build rule for target.
test4/fast:
	$(MAKE) -f c/struct/CMakeFiles/test4.dir/build.make c/struct/CMakeFiles/test4.dir/build
.PHONY : test4/fast

#=============================================================================
# Target rules for targets named test3

# Build rule for target.
test3: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test3
.PHONY : test3

# fast build rule for target.
test3/fast:
	$(MAKE) -f c/struct/CMakeFiles/test3.dir/build.make c/struct/CMakeFiles/test3.dir/build
.PHONY : test3/fast

#=============================================================================
# Target rules for targets named test2

# Build rule for target.
test2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test2
.PHONY : test2

# fast build rule for target.
test2/fast:
	$(MAKE) -f c/struct/CMakeFiles/test2.dir/build.make c/struct/CMakeFiles/test2.dir/build
.PHONY : test2/fast

#=============================================================================
# Target rules for targets named test5

# Build rule for target.
test5: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test5
.PHONY : test5

# fast build rule for target.
test5/fast:
	$(MAKE) -f c/struct/CMakeFiles/test5.dir/build.make c/struct/CMakeFiles/test5.dir/build
.PHONY : test5/fast

#=============================================================================
# Target rules for targets named test1

# Build rule for target.
test1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test1
.PHONY : test1

# fast build rule for target.
test1/fast:
	$(MAKE) -f c/struct/CMakeFiles/test1.dir/build.make c/struct/CMakeFiles/test1.dir/build
.PHONY : test1/fast

#=============================================================================
# Target rules for targets named test7

# Build rule for target.
test7: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test7
.PHONY : test7

# fast build rule for target.
test7/fast:
	$(MAKE) -f c/file/CMakeFiles/test7.dir/build.make c/file/CMakeFiles/test7.dir/build
.PHONY : test7/fast

#=============================================================================
# Target rules for targets named test6

# Build rule for target.
test6: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test6
.PHONY : test6

# fast build rule for target.
test6/fast:
	$(MAKE) -f c/file/CMakeFiles/test6.dir/build.make c/file/CMakeFiles/test6.dir/build
.PHONY : test6/fast

#=============================================================================
# Target rules for targets named select2

# Build rule for target.
select2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 select2
.PHONY : select2

# fast build rule for target.
select2/fast:
	$(MAKE) -f c/select/CMakeFiles/select2.dir/build.make c/select/CMakeFiles/select2.dir/build
.PHONY : select2/fast

#=============================================================================
# Target rules for targets named select1

# Build rule for target.
select1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 select1
.PHONY : select1

# fast build rule for target.
select1/fast:
	$(MAKE) -f c/select/CMakeFiles/select1.dir/build.make c/select/CMakeFiles/select1.dir/build
.PHONY : select1/fast

#=============================================================================
# Target rules for targets named 01-server

# Build rule for target.
01-server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 01-server
.PHONY : 01-server

# fast build rule for target.
01-server/fast:
	$(MAKE) -f 01-simple_socket_example/CMakeFiles/01-server.dir/build.make 01-simple_socket_example/CMakeFiles/01-server.dir/build
.PHONY : 01-server/fast

#=============================================================================
# Target rules for targets named 01-client

# Build rule for target.
01-client: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 01-client
.PHONY : 01-client

# fast build rule for target.
01-client/fast:
	$(MAKE) -f 01-simple_socket_example/CMakeFiles/01-client.dir/build.make 01-simple_socket_example/CMakeFiles/01-client.dir/build
.PHONY : 01-client/fast

#=============================================================================
# Target rules for targets named 02-client

# Build rule for target.
02-client: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 02-client
.PHONY : 02-client

# fast build rule for target.
02-client/fast:
	$(MAKE) -f 02-simple_socket-echo/CMakeFiles/02-client.dir/build.make 02-simple_socket-echo/CMakeFiles/02-client.dir/build
.PHONY : 02-client/fast

#=============================================================================
# Target rules for targets named 02-server

# Build rule for target.
02-server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 02-server
.PHONY : 02-server

# fast build rule for target.
02-server/fast:
	$(MAKE) -f 02-simple_socket-echo/CMakeFiles/02-server.dir/build.make 02-simple_socket-echo/CMakeFiles/02-server.dir/build
.PHONY : 02-server/fast

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... test4"
	@echo "... test3"
	@echo "... test2"
	@echo "... test5"
	@echo "... test1"
	@echo "... test7"
	@echo "... test6"
	@echo "... select2"
	@echo "... select1"
	@echo "... 01-server"
	@echo "... 01-client"
	@echo "... 02-client"
	@echo "... 02-server"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
