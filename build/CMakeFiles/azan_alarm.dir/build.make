# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /snap/cmake/1132/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1132/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/abdelrahman/Desktop/open source/Azan_Alarm"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/abdelrahman/Desktop/open source/Azan_Alarm/build"

# Include any dependencies generated for this target.
include CMakeFiles/azan_alarm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/azan_alarm.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/azan_alarm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/azan_alarm.dir/flags.make

CMakeFiles/azan_alarm.dir/main.cpp.o: CMakeFiles/azan_alarm.dir/flags.make
CMakeFiles/azan_alarm.dir/main.cpp.o: ../main.cpp
CMakeFiles/azan_alarm.dir/main.cpp.o: CMakeFiles/azan_alarm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/abdelrahman/Desktop/open source/Azan_Alarm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/azan_alarm.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/azan_alarm.dir/main.cpp.o -MF CMakeFiles/azan_alarm.dir/main.cpp.o.d -o CMakeFiles/azan_alarm.dir/main.cpp.o -c "/home/abdelrahman/Desktop/open source/Azan_Alarm/main.cpp"

CMakeFiles/azan_alarm.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/azan_alarm.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/abdelrahman/Desktop/open source/Azan_Alarm/main.cpp" > CMakeFiles/azan_alarm.dir/main.cpp.i

CMakeFiles/azan_alarm.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/azan_alarm.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/abdelrahman/Desktop/open source/Azan_Alarm/main.cpp" -o CMakeFiles/azan_alarm.dir/main.cpp.s

CMakeFiles/azan_alarm.dir/client.cpp.o: CMakeFiles/azan_alarm.dir/flags.make
CMakeFiles/azan_alarm.dir/client.cpp.o: ../client.cpp
CMakeFiles/azan_alarm.dir/client.cpp.o: CMakeFiles/azan_alarm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/abdelrahman/Desktop/open source/Azan_Alarm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/azan_alarm.dir/client.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/azan_alarm.dir/client.cpp.o -MF CMakeFiles/azan_alarm.dir/client.cpp.o.d -o CMakeFiles/azan_alarm.dir/client.cpp.o -c "/home/abdelrahman/Desktop/open source/Azan_Alarm/client.cpp"

CMakeFiles/azan_alarm.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/azan_alarm.dir/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/abdelrahman/Desktop/open source/Azan_Alarm/client.cpp" > CMakeFiles/azan_alarm.dir/client.cpp.i

CMakeFiles/azan_alarm.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/azan_alarm.dir/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/abdelrahman/Desktop/open source/Azan_Alarm/client.cpp" -o CMakeFiles/azan_alarm.dir/client.cpp.s

CMakeFiles/azan_alarm.dir/parser.cpp.o: CMakeFiles/azan_alarm.dir/flags.make
CMakeFiles/azan_alarm.dir/parser.cpp.o: ../parser.cpp
CMakeFiles/azan_alarm.dir/parser.cpp.o: CMakeFiles/azan_alarm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/abdelrahman/Desktop/open source/Azan_Alarm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/azan_alarm.dir/parser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/azan_alarm.dir/parser.cpp.o -MF CMakeFiles/azan_alarm.dir/parser.cpp.o.d -o CMakeFiles/azan_alarm.dir/parser.cpp.o -c "/home/abdelrahman/Desktop/open source/Azan_Alarm/parser.cpp"

CMakeFiles/azan_alarm.dir/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/azan_alarm.dir/parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/abdelrahman/Desktop/open source/Azan_Alarm/parser.cpp" > CMakeFiles/azan_alarm.dir/parser.cpp.i

CMakeFiles/azan_alarm.dir/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/azan_alarm.dir/parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/abdelrahman/Desktop/open source/Azan_Alarm/parser.cpp" -o CMakeFiles/azan_alarm.dir/parser.cpp.s

CMakeFiles/azan_alarm.dir/clockmanger.cpp.o: CMakeFiles/azan_alarm.dir/flags.make
CMakeFiles/azan_alarm.dir/clockmanger.cpp.o: ../clockmanger.cpp
CMakeFiles/azan_alarm.dir/clockmanger.cpp.o: CMakeFiles/azan_alarm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/abdelrahman/Desktop/open source/Azan_Alarm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/azan_alarm.dir/clockmanger.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/azan_alarm.dir/clockmanger.cpp.o -MF CMakeFiles/azan_alarm.dir/clockmanger.cpp.o.d -o CMakeFiles/azan_alarm.dir/clockmanger.cpp.o -c "/home/abdelrahman/Desktop/open source/Azan_Alarm/clockmanger.cpp"

CMakeFiles/azan_alarm.dir/clockmanger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/azan_alarm.dir/clockmanger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/abdelrahman/Desktop/open source/Azan_Alarm/clockmanger.cpp" > CMakeFiles/azan_alarm.dir/clockmanger.cpp.i

CMakeFiles/azan_alarm.dir/clockmanger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/azan_alarm.dir/clockmanger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/abdelrahman/Desktop/open source/Azan_Alarm/clockmanger.cpp" -o CMakeFiles/azan_alarm.dir/clockmanger.cpp.s

CMakeFiles/azan_alarm.dir/services.cpp.o: CMakeFiles/azan_alarm.dir/flags.make
CMakeFiles/azan_alarm.dir/services.cpp.o: ../services.cpp
CMakeFiles/azan_alarm.dir/services.cpp.o: CMakeFiles/azan_alarm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/abdelrahman/Desktop/open source/Azan_Alarm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/azan_alarm.dir/services.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/azan_alarm.dir/services.cpp.o -MF CMakeFiles/azan_alarm.dir/services.cpp.o.d -o CMakeFiles/azan_alarm.dir/services.cpp.o -c "/home/abdelrahman/Desktop/open source/Azan_Alarm/services.cpp"

CMakeFiles/azan_alarm.dir/services.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/azan_alarm.dir/services.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/abdelrahman/Desktop/open source/Azan_Alarm/services.cpp" > CMakeFiles/azan_alarm.dir/services.cpp.i

CMakeFiles/azan_alarm.dir/services.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/azan_alarm.dir/services.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/abdelrahman/Desktop/open source/Azan_Alarm/services.cpp" -o CMakeFiles/azan_alarm.dir/services.cpp.s

CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o: CMakeFiles/azan_alarm.dir/flags.make
CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o: ../UI_Manger.cpp
CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o: CMakeFiles/azan_alarm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/abdelrahman/Desktop/open source/Azan_Alarm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o -MF CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o.d -o CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o -c "/home/abdelrahman/Desktop/open source/Azan_Alarm/UI_Manger.cpp"

CMakeFiles/azan_alarm.dir/UI_Manger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/azan_alarm.dir/UI_Manger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/abdelrahman/Desktop/open source/Azan_Alarm/UI_Manger.cpp" > CMakeFiles/azan_alarm.dir/UI_Manger.cpp.i

CMakeFiles/azan_alarm.dir/UI_Manger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/azan_alarm.dir/UI_Manger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/abdelrahman/Desktop/open source/Azan_Alarm/UI_Manger.cpp" -o CMakeFiles/azan_alarm.dir/UI_Manger.cpp.s

# Object files for target azan_alarm
azan_alarm_OBJECTS = \
"CMakeFiles/azan_alarm.dir/main.cpp.o" \
"CMakeFiles/azan_alarm.dir/client.cpp.o" \
"CMakeFiles/azan_alarm.dir/parser.cpp.o" \
"CMakeFiles/azan_alarm.dir/clockmanger.cpp.o" \
"CMakeFiles/azan_alarm.dir/services.cpp.o" \
"CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o"

# External object files for target azan_alarm
azan_alarm_EXTERNAL_OBJECTS =

azan_alarm: CMakeFiles/azan_alarm.dir/main.cpp.o
azan_alarm: CMakeFiles/azan_alarm.dir/client.cpp.o
azan_alarm: CMakeFiles/azan_alarm.dir/parser.cpp.o
azan_alarm: CMakeFiles/azan_alarm.dir/clockmanger.cpp.o
azan_alarm: CMakeFiles/azan_alarm.dir/services.cpp.o
azan_alarm: CMakeFiles/azan_alarm.dir/UI_Manger.cpp.o
azan_alarm: CMakeFiles/azan_alarm.dir/build.make
azan_alarm: CMakeFiles/azan_alarm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/abdelrahman/Desktop/open source/Azan_Alarm/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable azan_alarm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/azan_alarm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/azan_alarm.dir/build: azan_alarm
.PHONY : CMakeFiles/azan_alarm.dir/build

CMakeFiles/azan_alarm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/azan_alarm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/azan_alarm.dir/clean

CMakeFiles/azan_alarm.dir/depend:
	cd "/home/abdelrahman/Desktop/open source/Azan_Alarm/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/abdelrahman/Desktop/open source/Azan_Alarm" "/home/abdelrahman/Desktop/open source/Azan_Alarm" "/home/abdelrahman/Desktop/open source/Azan_Alarm/build" "/home/abdelrahman/Desktop/open source/Azan_Alarm/build" "/home/abdelrahman/Desktop/open source/Azan_Alarm/build/CMakeFiles/azan_alarm.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/azan_alarm.dir/depend
