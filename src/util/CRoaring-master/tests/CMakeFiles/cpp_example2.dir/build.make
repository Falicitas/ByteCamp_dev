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
include tests/CMakeFiles/cpp_example2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/cpp_example2.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/cpp_example2.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/cpp_example2.dir/flags.make

tests/CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o: tests/CMakeFiles/cpp_example2.dir/flags.make
tests/CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o: tests/cpp_example2.cpp
tests/CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o: tests/CMakeFiles/cpp_example2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/xiaojian/xiaojian/src/util/CRoaring-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o -MF CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o.d -o CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o -c /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/cpp_example2.cpp

tests/CMakeFiles/cpp_example2.dir/cpp_example2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_example2.dir/cpp_example2.cpp.i"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/cpp_example2.cpp > CMakeFiles/cpp_example2.dir/cpp_example2.cpp.i

tests/CMakeFiles/cpp_example2.dir/cpp_example2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_example2.dir/cpp_example2.cpp.s"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/cpp_example2.cpp -o CMakeFiles/cpp_example2.dir/cpp_example2.cpp.s

# Object files for target cpp_example2
cpp_example2_OBJECTS = \
"CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o"

# External object files for target cpp_example2
cpp_example2_EXTERNAL_OBJECTS =

tests/cpp_example2: tests/CMakeFiles/cpp_example2.dir/cpp_example2.cpp.o
tests/cpp_example2: tests/CMakeFiles/cpp_example2.dir/build.make
tests/cpp_example2: src/libroaring.a
tests/cpp_example2: tests/vendor/cmocka/libcmocka.a
tests/cpp_example2: tests/CMakeFiles/cpp_example2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/xiaojian/xiaojian/src/util/CRoaring-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpp_example2"
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp_example2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/cpp_example2.dir/build: tests/cpp_example2
.PHONY : tests/CMakeFiles/cpp_example2.dir/build

tests/CMakeFiles/cpp_example2.dir/clean:
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master/tests && $(CMAKE_COMMAND) -P CMakeFiles/cpp_example2.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/cpp_example2.dir/clean

tests/CMakeFiles/cpp_example2.dir/depend:
	cd /root/xiaojian/xiaojian/src/util/CRoaring-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/xiaojian/xiaojian/src/util/CRoaring-master /root/xiaojian/xiaojian/src/util/CRoaring-master/tests /root/xiaojian/xiaojian/src/util/CRoaring-master /root/xiaojian/xiaojian/src/util/CRoaring-master/tests /root/xiaojian/xiaojian/src/util/CRoaring-master/tests/CMakeFiles/cpp_example2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/cpp_example2.dir/depend

