# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /opt/cmake/cmake-3.21.1-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake/cmake-3.21.1-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/xiaojian/xiaojian/src/util/CRoaring-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/xiaojian/xiaojian/src/util/CRoaring-master

# Include any dependencies generated for this target.
include tests/CMakeFiles/c_example1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/c_example1.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/c_example1.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/c_example1.dir/flags.make

tests/CMakeFiles/c_example1.dir/c_example1.c.o: tests/CMakeFiles/c_example1.dir/flags.make
tests/CMakeFiles/c_example1.dir/c_example1.c.o: tests/c_example1.c
tests/CMakeFiles/c_example1.dir/c_example1.c.o: tests/CMakeFiles/c_example1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/xiaojian/xiaojian/src/util/CRoaring-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/c_example1.dir/c_example1.c.o"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/c_example1.dir/c_example1.c.o -MF CMakeFiles/c_example1.dir/c_example1.c.o.d -o CMakeFiles/c_example1.dir/c_example1.c.o -c /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/c_example1.c

tests/CMakeFiles/c_example1.dir/c_example1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_example1.dir/c_example1.c.i"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/c_example1.c > CMakeFiles/c_example1.dir/c_example1.c.i

tests/CMakeFiles/c_example1.dir/c_example1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_example1.dir/c_example1.c.s"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/c_example1.c -o CMakeFiles/c_example1.dir/c_example1.c.s

# Object files for target c_example1
c_example1_OBJECTS = \
"CMakeFiles/c_example1.dir/c_example1.c.o"

# External object files for target c_example1
c_example1_EXTERNAL_OBJECTS =

tests/c_example1: tests/CMakeFiles/c_example1.dir/c_example1.c.o
tests/c_example1: tests/CMakeFiles/c_example1.dir/build.make
tests/c_example1: src/libroaring.a
tests/c_example1: tests/vendor/cmocka/libcmocka.a
tests/c_example1: tests/CMakeFiles/c_example1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/xiaojian/xiaojian/src/util/CRoaring-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable c_example1"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c_example1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/c_example1.dir/build: tests/c_example1
.PHONY : tests/CMakeFiles/c_example1.dir/build

tests/CMakeFiles/c_example1.dir/clean:
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && $(CMAKE_COMMAND) -P CMakeFiles/c_example1.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/c_example1.dir/clean

tests/CMakeFiles/c_example1.dir/depend:
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/xiaojian/xiaojian/src/util/CRoaring-master /root/xiaojian/xiaojian/src/util/CRoaring-master/tests /root/xiaojian/xiaojian/src/util/CRoaring-master /root/xiaojian/xiaojian/src/util/CRoaring-master/tests /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/CMakeFiles/c_example1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/c_example1.dir/depend

