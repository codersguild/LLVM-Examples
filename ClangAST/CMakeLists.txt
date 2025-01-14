cmake_minimum_required(VERSION 3.1.4)
project(clang_ast)
set (CMAKE_CXX_STANDARD 17)

set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

# Modify this based on where you cloned and build llvm,
set(LLVM_PATH $ENV{LLVM_BUILD_PATH})
find_package(LLVM REQUIRED CONFIG)

link_directories(${LLVM_PATH}/lib)
link_directories(${LLVM_PATH}/tools/clang/lib)
include_directories(${LLVM_PATH}/include)
include_directories(${LLVM_PATH}/tools/clang/include)
include_directories(include)

add_definitions(
    -D__STDC_LIMIT_MACROS
    -D__STDC_CONSTANT_MACROS
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -std=c++17")
if(NOT LLVM_ENABLE_RTTI)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti -O3 -std=c++17")
endif()

# set(SOURCE_FILES src/clangIfElseOld.cpp)
# set(SOURCE_FILES src/clangIfElseTooling.cpp)
set(SOURCE_FILES src/astVisitor.cpp)

add_executable(clang_ast ${SOURCE_FILES})
add_executable(example ../tests/test1.cpp)

set(LLVM_LINK_COMPONENTS support options)

target_link_libraries(clang_ast
    clang
    clangASTMatchers
    clangFrontend
    clangSerialization
    clangDriver
    clangParse
    clangSema
    clangAnalysis
    clangAST
    clangBasic
    clangEdit
    clangStaticAnalyzerFrontend
    clangStaticAnalyzerCheckers
    clangStaticAnalyzerCore
    clangTooling
    clangToolingSyntax
    clangToolingCore
    clangFrontendTool
    clangLex
    clangRewrite
    clangRewriteFrontend
    clangFormat
    # LLVMX86AsmParser # MC, MCParser, Support, X86Desc, X86Info
    # LLVMX86Desc # MC, Support, X86AsmPrinter, X86Info
    # LLVMAsmParser # MC, Support, X86Utils
    # LLVMX86Info # MC, Support, Target
    # LLVMX86Utils # Core, Support
    LLVMipo
    # LLVMScalarOpts
    LLVMInstCombine
    LLVMTransformUtils
    LLVMInstrumentation
    LLVMAnalysis
    LLVMTarget
    LLVMOption # Support
    LLVMMCParser # MC, Support
    LLVMMC # Object, Support
    LLVMObject # BitReader, Core, Support
    LLVMBitReader # Core, Support
    LLVMCore # Support
    LLVMSupport
)

include(FindCurses)
target_link_libraries(clang_ast
    pthread
    z
    dl
    ${CURSES_LIBRARIES}
)

set_property(TARGET clang_ast PROPERTY CXX_STANDARD 17)