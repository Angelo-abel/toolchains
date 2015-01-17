#
# Platform file for generic/Emscripten.cmake toolchain
#

# Start from something sane and working
include(Platform/Linux)

# Prefixes/suffixes for building
set(CMAKE_STATIC_LIBRARY_PREFIX "")
set(CMAKE_STATIC_LIBRARY_SUFFIX ".bc")
set(CMAKE_EXECUTABLE_SUFFIX ".js")

# Prefixes/suffixes for finding libraries
set(CMAKE_FIND_LIBRARY_PREFIXES "")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".bc")

# Disable annoying warning about absolute includes
set(CMAKE_CXX_FLAGS "-Wno-warn-absolute-paths")

# Best possible options for code size in release mode
set(CMAKE_CXX_FLAGS_RELEASE "-DNDEBUG -O2 --closure 1" CACHE STRING "Flags used by Emscripten compiler for Release builds")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "-O2 --closure 1 --llvm-lto 2" CACHE STRING "Flags used by Emscripten linker for Release builds")
