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
include tests/vendor/cmocka/CMakeFiles/cmocka.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/vendor/cmocka/CMakeFiles/cmocka.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/vendor/cmocka/CMakeFiles/cmocka.dir/progress.make

# Include the compile flags for this target's objects.
include tests/vendor/cmocka/CMakeFiles/cmocka.dir/flags.make

tests/vendor/cmocka/CMakeFiles/cmocka.dir/cmocka.c.o: tests/vendor/cmocka/CMakeFiles/cmocka.dir/flags.make
tests/vendor/cmocka/CMakeFiles/cmocka.dir/cmocka.c.o: tests/vendor/cmocka/cmocka.c
tests/vendor/cmocka/CMakeFiles/cmocka.dir/cmocka.c.o: tests/vendor/cmocka/CMakeFiles/cmocka.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/xiaojian/xiaojian/src/util/CRoaring-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/vendor/cmocka/CMakeFiles/cmocka.dir/cmocka.c.o"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/vendor/cmocka/CMakeFiles/cmocka.dir/cmocka.c.o -MF CMakeFiles/cmocka.dir/cmocka.c.o.d -o CMakeFiles/cmocka.dir/cmocka.c.o -c /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka/cmocka.c

tests/vendor/cmocka/CMakeFiles/cmocka.dir/cmocka.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cmocka.dir/cmocka.c.i"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka/cmocka.c > CMakeFiles/cmocka.dir/cmocka.c.i

tests/vendor/cmocka/CMakeFiles/cmocka.dir/cmocka.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cmocka.dir/cmocka.c.s"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka/cmocka.c -o CMakeFiles/cmocka.dir/cmocka.c.s

# Object files for target cmocka
cmocka_OBJECTS = \
"CMakeFiles/cmocka.dir/cmocka.c.o"

# External object files for target cmocka
cmocka_EXTERNAL_OBJECTS =

tests/vendor/cmocka/libcmocka.a: tests/vendor/cmocka/CMakeFiles/cmocka.dir/cmocka.c.o
tests/vendor/cmocka/libcmocka.a: tests/vendor/cmocka/CMakeFiles/cmocka.dir/build.make
tests/vendor/cmocka/libcmocka.a: tests/vendor/cmocka/CMakeFiles/cmocka.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/xiaojian/xiaojian/src/util/CRoaring-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libcmocka.a"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka && $(CMAKE_COMMAND) -P CMakeFiles/cmocka.dir/cmake_clean_target.cmake
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmocka.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/vendor/cmocka/CMakeFiles/cmocka.dir/build: tests/vendor/cmocka/libcmocka.a
.PHONY : tests/vendor/cmocka/CMakeFiles/cmocka.dir/build

tests/vendor/cmocka/CMakeFiles/cmocka.dir/clean:
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka && $(CMAKE_COMMAND) -P CMakeFiles/cmocka.dir/cmake_clean.cmake
.PHONY : tests/vendor/cmocka/CMakeFiles/cmocka.dir/clean

tests/vendor/cmocka/CMakeFiles/cmocka.dir/depend:
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/xiaojian/xiaojian/src/util/CRoaring-master /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka /root/xiaojian/xiaojian/src/util/CRoaring-master /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/vendor/cmocka/CMakeFiles/cmocka.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/vendor/cmocka/CMakeFiles/cmocka.dir/depend

