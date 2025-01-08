cmake_minimum_required(VERSION 3.22)

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES CXX)

set(EXECUTABLE_NAME executable)
set(LIBRARY_NAME library)

# we must add "src" and then "inc". Otherwise, we will get an error:
# CMake Error at inc/my_lib/CMakeLists.txt:1 (target_include_directories):
# Cannot specify include directories for target "library" which is not built
# by this project.
add_subdirectory(src)
add_subdirectory(inc)
add_subdirectory(app)
