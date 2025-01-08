cmake_minimum_required(VERSION 3.22)

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)

set(EXECUTABLE_NAME executable)
set(LIBRARY_NAME library)

add_subdirectory(src)
add_subdirectory(app)
