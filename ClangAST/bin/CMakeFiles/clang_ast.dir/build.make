# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/bin

# Include any dependencies generated for this target.
include CMakeFiles/clang_ast.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/clang_ast.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/clang_ast.dir/flags.make

CMakeFiles/clang_ast.dir/src/main.cpp.o: CMakeFiles/clang_ast.dir/flags.make
CMakeFiles/clang_ast.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/clang_ast.dir/src/main.cpp.o"
	/usr/bin/clang++-10  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clang_ast.dir/src/main.cpp.o -c /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/src/main.cpp

CMakeFiles/clang_ast.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clang_ast.dir/src/main.cpp.i"
	/usr/bin/clang++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/src/main.cpp > CMakeFiles/clang_ast.dir/src/main.cpp.i

CMakeFiles/clang_ast.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clang_ast.dir/src/main.cpp.s"
	/usr/bin/clang++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/src/main.cpp -o CMakeFiles/clang_ast.dir/src/main.cpp.s

# Object files for target clang_ast
clang_ast_OBJECTS = \
"CMakeFiles/clang_ast.dir/src/main.cpp.o"

# External object files for target clang_ast
clang_ast_EXTERNAL_OBJECTS =

clang_ast: CMakeFiles/clang_ast.dir/src/main.cpp.o
clang_ast: CMakeFiles/clang_ast.dir/build.make
clang_ast: /usr/local/lib/libLLVMX86AsmParser.a
clang_ast: /usr/local/lib/libLLVMX86Desc.a
clang_ast: /usr/local/lib/libLLVMAsmParser.a
clang_ast: /usr/local/lib/libLLVMX86Info.a
clang_ast: /usr/local/lib/libLLVMipo.a
clang_ast: /usr/local/lib/libLLVMScalarOpts.a
clang_ast: /usr/local/lib/libLLVMInstCombine.a
clang_ast: /usr/local/lib/libLLVMTransformUtils.a
clang_ast: /usr/local/lib/libLLVMInstrumentation.a
clang_ast: /usr/local/lib/libLLVMAnalysis.a
clang_ast: /usr/local/lib/libLLVMTarget.a
clang_ast: /usr/local/lib/libLLVMOption.a
clang_ast: /usr/local/lib/libLLVMMCParser.a
clang_ast: /usr/local/lib/libLLVMMC.a
clang_ast: /usr/local/lib/libLLVMObject.a
clang_ast: /usr/local/lib/libLLVMBitReader.a
clang_ast: /usr/local/lib/libLLVMCore.a
clang_ast: /usr/local/lib/libLLVMSupport.a
clang_ast: /usr/lib/x86_64-linux-gnu/libcurses.so
clang_ast: /usr/lib/x86_64-linux-gnu/libform.so
clang_ast: /usr/lib/x86_64-linux-gnu/libcurses.so
clang_ast: /usr/lib/x86_64-linux-gnu/libform.so
clang_ast: /usr/local/lib/libLLVMMCDisassembler.a
clang_ast: /usr/local/lib/libLLVMBitWriter.a
clang_ast: /usr/local/lib/libLLVMFrontendOpenMP.a
clang_ast: /usr/local/lib/libLLVMScalarOpts.a
clang_ast: /usr/local/lib/libLLVMInstCombine.a
clang_ast: /usr/local/lib/libLLVMAggressiveInstCombine.a
clang_ast: /usr/local/lib/libLLVMIRReader.a
clang_ast: /usr/local/lib/libLLVMAsmParser.a
clang_ast: /usr/local/lib/libLLVMLinker.a
clang_ast: /usr/local/lib/libLLVMVectorize.a
clang_ast: /usr/local/lib/libLLVMTransformUtils.a
clang_ast: /usr/local/lib/libLLVMAnalysis.a
clang_ast: /usr/local/lib/libLLVMObject.a
clang_ast: /usr/local/lib/libLLVMMCParser.a
clang_ast: /usr/local/lib/libLLVMBitReader.a
clang_ast: /usr/local/lib/libLLVMTextAPI.a
clang_ast: /usr/local/lib/libLLVMProfileData.a
clang_ast: /usr/local/lib/libLLVMMC.a
clang_ast: /usr/local/lib/libLLVMDebugInfoCodeView.a
clang_ast: /usr/local/lib/libLLVMCore.a
clang_ast: /usr/local/lib/libLLVMBinaryFormat.a
clang_ast: /usr/local/lib/libLLVMRemarks.a
clang_ast: /usr/local/lib/libLLVMBitstreamReader.a
clang_ast: /usr/local/lib/libLLVMSupport.a
clang_ast: /usr/lib/x86_64-linux-gnu/libz.so
clang_ast: /usr/lib/x86_64-linux-gnu/libtinfo.so
clang_ast: /usr/local/lib/libLLVMDemangle.a
clang_ast: CMakeFiles/clang_ast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable clang_ast"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clang_ast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/clang_ast.dir/build: clang_ast

.PHONY : CMakeFiles/clang_ast.dir/build

CMakeFiles/clang_ast.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clang_ast.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clang_ast.dir/clean

CMakeFiles/clang_ast.dir/depend:
	cd /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/bin /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/bin /home/clustfuzz/Documents/LLVM/LLVM-Examples/ClangAST/bin/CMakeFiles/clang_ast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clang_ast.dir/depend

