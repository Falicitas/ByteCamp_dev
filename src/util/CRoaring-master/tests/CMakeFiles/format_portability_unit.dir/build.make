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
include tests/CMakeFiles/format_portability_unit.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/format_portability_unit.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/format_portability_unit.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/format_portability_unit.dir/flags.make

tests/CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o: tests/CMakeFiles/format_portability_unit.dir/flags.make
tests/CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o: tests/format_portability_unit.c
tests/CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o: tests/CMakeFiles/format_portability_unit.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/xiaojian/xiaojian/src/util/CRoaring-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o -MF CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o.d -o CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o -c /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/format_portability_unit.c

tests/CMakeFiles/format_portability_unit.dir/format_portability_unit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/format_portability_unit.dir/format_portability_unit.c.i"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/format_portability_unit.c > CMakeFiles/format_portability_unit.dir/format_portability_unit.c.i

tests/CMakeFiles/format_portability_unit.dir/format_portability_unit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/format_portability_unit.dir/format_portability_unit.c.s"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/format_portability_unit.c -o CMakeFiles/format_portability_unit.dir/format_portability_unit.c.s

# Object files for target format_portability_unit
format_portability_unit_OBJECTS = \
"CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o"

# External object files for target format_portability_unit
format_portability_unit_EXTERNAL_OBJECTS =

tests/format_portability_unit: tests/CMakeFiles/format_portability_unit.dir/format_portability_unit.c.o
tests/format_portability_unit: tests/CMakeFiles/format_portability_unit.dir/build.make
tests/format_portability_unit: src/libroaring.a
tests/format_portability_unit: tests/vendor/cmocka/libcmocka.a
tests/format_portability_unit: tests/CMakeFiles/format_portability_unit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/xiaojian/xiaojian/src/util/CRoaring-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable format_portability_unit"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/format_portability_unit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/format_portability_unit.dir/build: tests/format_portability_unit
.PHONY : tests/CMakeFiles/format_portability_unit.dir/build

tests/CMakeFiles/format_portability_unit.dir/clean:
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && $(CMAKE_COMMAND) -P CMakeFiles/format_portability_unit.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/format_portability_unit.dir/clean

tests/CMakeFiles/format_portability_unit.dir/depend:
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/xiaojian/xiaojian/src/util/CRoaring-master /root/xiaojian/xiaojian/src/util/CRoaring-master/tests /root/xiaojian/xiaojian/src/util/CRoaring-master /root/xiaojian/xiaojian/src/util/CRoaring-master/tests /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/CMakeFiles/format_portability_unit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/format_portability_unit.dir/depend

