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
include CMakeFiles/ImageSample.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ImageSample.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ImageSample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ImageSample.dir/flags.make

CMakeFiles/ImageSample.dir/Image.c.obj: CMakeFiles/ImageSample.dir/flags.make
CMakeFiles/ImageSample.dir/Image.c.obj: CMakeFiles/ImageSample.dir/includes_C.rsp
CMakeFiles/ImageSample.dir/Image.c.obj: ../Image.c
CMakeFiles/ImageSample.dir/Image.c.obj: CMakeFiles/ImageSample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ImageSample.dir/Image.c.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ImageSample.dir/Image.c.obj -MF CMakeFiles\ImageSample.dir\Image.c.obj.d -o CMakeFiles\ImageSample.dir\Image.c.obj -c "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Image.c"

CMakeFiles/ImageSample.dir/Image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ImageSample.dir/Image.c.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Image.c" > CMakeFiles\ImageSample.dir\Image.c.i

CMakeFiles/ImageSample.dir/Image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ImageSample.dir/Image.c.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\Image.c" -o CMakeFiles\ImageSample.dir\Image.c.s

# Object files for target ImageSample
ImageSample_OBJECTS = \
"CMakeFiles/ImageSample.dir/Image.c.obj"

# External object files for target ImageSample
ImageSample_EXTERNAL_OBJECTS = \
"C:/Users/zijie/Desktop/GestureRecognition/C++/Gesture Recognition/cmake-build-debug/CMakeFiles/libExampleConnection.dir/Connection.c.obj"

ImageSample.exe: CMakeFiles/ImageSample.dir/Image.c.obj
ImageSample.exe: CMakeFiles/libExampleConnection.dir/Connection.c.obj
ImageSample.exe: CMakeFiles/ImageSample.dir/build.make
ImageSample.exe: C:/Program\ Files/Ultraleap/LeapSDK/lib/x64/LeapC.lib
ImageSample.exe: CMakeFiles/ImageSample.dir/linklibs.rsp
ImageSample.exe: CMakeFiles/ImageSample.dir/objects1.rsp
ImageSample.exe: CMakeFiles/ImageSample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ImageSample.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ImageSample.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ImageSample.dir/build: ImageSample.exe
.PHONY : CMakeFiles/ImageSample.dir/build

CMakeFiles/ImageSample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ImageSample.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ImageSample.dir/clean

CMakeFiles/ImageSample.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug" "C:\Users\zijie\Desktop\GestureRecognition\C++\Gesture Recognition\cmake-build-debug\CMakeFiles\ImageSample.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ImageSample.dir/depend
