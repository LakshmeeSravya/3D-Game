# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/karthika/graphics/20161169_Assignment2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/karthika/graphics/20161169_Assignment2/build

# Include any dependencies generated for this target.
include CMakeFiles/graphics_asgn2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/graphics_asgn2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/graphics_asgn2.dir/flags.make

CMakeFiles/graphics_asgn2.dir/src/main.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/main.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/main.cpp

CMakeFiles/graphics_asgn2.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/main.cpp > CMakeFiles/graphics_asgn2.dir/src/main.cpp.i

CMakeFiles/graphics_asgn2.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/main.cpp -o CMakeFiles/graphics_asgn2.dir/src/main.cpp.s

CMakeFiles/graphics_asgn2.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/main.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/main.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/main.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/main.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/main.cpp.o


CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o: ../src/other_handlers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/other_handlers.cpp

CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/other_handlers.cpp > CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.i

CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/other_handlers.cpp -o CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.s

CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o


CMakeFiles/graphics_asgn2.dir/src/color.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/color.cpp.o: ../src/color.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/color.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/color.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/color.cpp

CMakeFiles/graphics_asgn2.dir/src/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/color.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/color.cpp > CMakeFiles/graphics_asgn2.dir/src/color.cpp.i

CMakeFiles/graphics_asgn2.dir/src/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/color.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/color.cpp -o CMakeFiles/graphics_asgn2.dir/src/color.cpp.s

CMakeFiles/graphics_asgn2.dir/src/color.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/color.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/color.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/color.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/color.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/color.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/color.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/color.cpp.o


CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o: ../src/monster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/monster.cpp

CMakeFiles/graphics_asgn2.dir/src/monster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/monster.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/monster.cpp > CMakeFiles/graphics_asgn2.dir/src/monster.cpp.i

CMakeFiles/graphics_asgn2.dir/src/monster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/monster.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/monster.cpp -o CMakeFiles/graphics_asgn2.dir/src/monster.cpp.s

CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o


CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o: ../src/boat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/boat.cpp

CMakeFiles/graphics_asgn2.dir/src/boat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/boat.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/boat.cpp > CMakeFiles/graphics_asgn2.dir/src/boat.cpp.i

CMakeFiles/graphics_asgn2.dir/src/boat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/boat.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/boat.cpp -o CMakeFiles/graphics_asgn2.dir/src/boat.cpp.s

CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o


CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o: ../src/rock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/rock.cpp

CMakeFiles/graphics_asgn2.dir/src/rock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/rock.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/rock.cpp > CMakeFiles/graphics_asgn2.dir/src/rock.cpp.i

CMakeFiles/graphics_asgn2.dir/src/rock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/rock.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/rock.cpp -o CMakeFiles/graphics_asgn2.dir/src/rock.cpp.s

CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o


CMakeFiles/graphics_asgn2.dir/src/input.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/input.cpp.o: ../src/input.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/input.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/input.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/input.cpp

CMakeFiles/graphics_asgn2.dir/src/input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/input.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/input.cpp > CMakeFiles/graphics_asgn2.dir/src/input.cpp.i

CMakeFiles/graphics_asgn2.dir/src/input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/input.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/input.cpp -o CMakeFiles/graphics_asgn2.dir/src/input.cpp.s

CMakeFiles/graphics_asgn2.dir/src/input.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/input.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/input.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/input.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/input.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/input.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/input.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/input.cpp.o


CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o: ../src/ball.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/ball.cpp

CMakeFiles/graphics_asgn2.dir/src/ball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/ball.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/ball.cpp > CMakeFiles/graphics_asgn2.dir/src/ball.cpp.i

CMakeFiles/graphics_asgn2.dir/src/ball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/ball.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/ball.cpp -o CMakeFiles/graphics_asgn2.dir/src/ball.cpp.s

CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o


CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o: ../src/nonedit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/nonedit.cpp

CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/nonedit.cpp > CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.i

CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/nonedit.cpp -o CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.s

CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o


CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o: ../src/barrel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/barrel.cpp

CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/barrel.cpp > CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.i

CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/barrel.cpp -o CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.s

CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o


CMakeFiles/graphics_asgn2.dir/src/background.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/background.cpp.o: ../src/background.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/background.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/background.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/background.cpp

CMakeFiles/graphics_asgn2.dir/src/background.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/background.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/background.cpp > CMakeFiles/graphics_asgn2.dir/src/background.cpp.i

CMakeFiles/graphics_asgn2.dir/src/background.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/background.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/background.cpp -o CMakeFiles/graphics_asgn2.dir/src/background.cpp.s

CMakeFiles/graphics_asgn2.dir/src/background.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/background.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/background.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/background.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/background.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/background.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/background.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/background.cpp.o


CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o: CMakeFiles/graphics_asgn2.dir/flags.make
CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o: ../src/timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o -c /home/karthika/graphics/20161169_Assignment2/src/timer.cpp

CMakeFiles/graphics_asgn2.dir/src/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn2.dir/src/timer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karthika/graphics/20161169_Assignment2/src/timer.cpp > CMakeFiles/graphics_asgn2.dir/src/timer.cpp.i

CMakeFiles/graphics_asgn2.dir/src/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn2.dir/src/timer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karthika/graphics/20161169_Assignment2/src/timer.cpp -o CMakeFiles/graphics_asgn2.dir/src/timer.cpp.s

CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o.requires:

.PHONY : CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o.requires

CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o.provides: CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o.requires
	$(MAKE) -f CMakeFiles/graphics_asgn2.dir/build.make CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o.provides.build
.PHONY : CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o.provides

CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o.provides.build: CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o


# Object files for target graphics_asgn2
graphics_asgn2_OBJECTS = \
"CMakeFiles/graphics_asgn2.dir/src/main.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/color.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/input.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/background.cpp.o" \
"CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o"

# External object files for target graphics_asgn2
graphics_asgn2_EXTERNAL_OBJECTS =

graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/main.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/color.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/input.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/background.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/build.make
graphics_asgn2: CMakeFiles/graphics_asgn2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/karthika/graphics/20161169_Assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable graphics_asgn2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graphics_asgn2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/graphics_asgn2.dir/build: graphics_asgn2

.PHONY : CMakeFiles/graphics_asgn2.dir/build

CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/main.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/other_handlers.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/color.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/monster.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/boat.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/rock.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/input.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/ball.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/nonedit.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/barrel.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/background.cpp.o.requires
CMakeFiles/graphics_asgn2.dir/requires: CMakeFiles/graphics_asgn2.dir/src/timer.cpp.o.requires

.PHONY : CMakeFiles/graphics_asgn2.dir/requires

CMakeFiles/graphics_asgn2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/graphics_asgn2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/graphics_asgn2.dir/clean

CMakeFiles/graphics_asgn2.dir/depend:
	cd /home/karthika/graphics/20161169_Assignment2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/karthika/graphics/20161169_Assignment2 /home/karthika/graphics/20161169_Assignment2 /home/karthika/graphics/20161169_Assignment2/build /home/karthika/graphics/20161169_Assignment2/build /home/karthika/graphics/20161169_Assignment2/build/CMakeFiles/graphics_asgn2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/graphics_asgn2.dir/depend

