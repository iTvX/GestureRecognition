# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2022.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2022.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/libExampleConnection.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/libExampleConnection.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/libExampleConnection.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libExampleConnection.dir/flags.make

CMakeFiles/libExampleConnection.dir/Connection.c.obj: CMakeFiles/libExampleConnection.dir/flags.make
CMakeFiles/libExampleConnection.dir/Connection.c.obj: CMakeFiles/libExampleConnection.dir/includes_C.rsp
CMakeFiles/libExampleConnection.dir/Connection.c.obj: ../Connection.c
CMakeFiles/libExampleConnection.dir/Connection.c.obj: CMakeFiles/libExampleConnection.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/libExampleConnection.dir/Connection.c.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/libExampleConnection.dir/Connection.c.obj -MF CMakeFiles\libExampleConnection.dir\Connection.c.obj.d -o CMakeFiles\libExampleConnection.dir\Connection.c.obj -c "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Connection.c"

CMakeFiles/libExampleConnection.dir/Connection.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libExampleConnection.dir/Connection.c.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Connection.c" > CMakeFiles\libExampleConnection.dir\Connection.c.i

CMakeFiles/libExampleConnection.dir/Connection.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libExampleConnection.dir/Connection.c.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Connection.c" -o CMakeFiles\libExampleConnection.dir\Connection.c.s

libExampleConnection: CMakeFiles/libExampleConnection.dir/Connection.c.obj
libExampleConnection: CMakeFiles/libExampleConnection.dir/build.make
.PHONY : libExampleConnection

# Rule to build all files generated by this target.
CMakeFiles/libExampleConnection.dir/build: libExampleConnection
.PHONY : CMakeFiles/libExampleConnection.dir/build

CMakeFiles/libExampleConnection.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\libExampleConnection.dir\cmake_clean.cmake
.PHONY : CMakeFiles/libExampleConnection.dir/clean

CMakeFiles/libExampleConnection.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug\CMakeFiles\libExampleConnection.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/libExampleConnection.dir/depend
