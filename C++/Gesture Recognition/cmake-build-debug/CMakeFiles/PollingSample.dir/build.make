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
include CMakeFiles/PollingSample.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/PollingSample.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/PollingSample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PollingSample.dir/flags.make

CMakeFiles/PollingSample.dir/Polling.c.obj: CMakeFiles/PollingSample.dir/flags.make
CMakeFiles/PollingSample.dir/Polling.c.obj: CMakeFiles/PollingSample.dir/includes_C.rsp
CMakeFiles/PollingSample.dir/Polling.c.obj: ../Polling.c
CMakeFiles/PollingSample.dir/Polling.c.obj: CMakeFiles/PollingSample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PollingSample.dir/Polling.c.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/PollingSample.dir/Polling.c.obj -MF CMakeFiles\PollingSample.dir\Polling.c.obj.d -o CMakeFiles\PollingSample.dir\Polling.c.obj -c "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Polling.c"

CMakeFiles/PollingSample.dir/Polling.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PollingSample.dir/Polling.c.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Polling.c" > CMakeFiles\PollingSample.dir\Polling.c.i

CMakeFiles/PollingSample.dir/Polling.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PollingSample.dir/Polling.c.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Polling.c" -o CMakeFiles\PollingSample.dir\Polling.c.s

# Object files for target PollingSample
PollingSample_OBJECTS = \
"CMakeFiles/PollingSample.dir/Polling.c.obj"

# External object files for target PollingSample
PollingSample_EXTERNAL_OBJECTS = \
"C:/Users/zijie/Desktop/GestureRecognition/C++/Gesture Recognition/cmake-build-debug/CMakeFiles/libExampleConnection.dir/Connection.c.obj"

PollingSample.exe: CMakeFiles/PollingSample.dir/Polling.c.obj
PollingSample.exe: CMakeFiles/libExampleConnection.dir/Connection.c.obj
PollingSample.exe: CMakeFiles/PollingSample.dir/build.make
PollingSample.exe: C:/Program\ Files/Ultraleap/LeapSDK/lib/x64/LeapC.lib
PollingSample.exe: CMakeFiles/PollingSample.dir/linklibs.rsp
PollingSample.exe: CMakeFiles/PollingSample.dir/objects1.rsp
PollingSample.exe: CMakeFiles/PollingSample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable PollingSample.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\PollingSample.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PollingSample.dir/build: PollingSample.exe
.PHONY : CMakeFiles/PollingSample.dir/build

CMakeFiles/PollingSample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PollingSample.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PollingSample.dir/clean

CMakeFiles/PollingSample.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug\CMakeFiles\PollingSample.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/PollingSample.dir/depend

