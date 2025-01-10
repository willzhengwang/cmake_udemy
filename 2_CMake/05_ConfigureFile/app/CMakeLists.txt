add_executable(${EXECUTABLE_NAME} "main.cc")
target_include_directories(${EXECUTABLE_NAME} PRIVATE "${CMAKE_BINARY_DIR}/configured_files/include")
target_link_libraries(${EXECUTABLE_NAME} PRIVATE ${LIBRARY_NAME})
