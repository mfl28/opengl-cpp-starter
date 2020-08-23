cmake_minimum_required(VERSION 3.14)

project(opengl-cpp-starter LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

include(fetch_glfw)
include(fetch_glad)

add_executable(starter)
target_sources(starter PRIVATE src/main.cpp src/utils.cpp)
target_include_directories(starter PUBLIC include)

target_link_libraries(starter PUBLIC glfw glad)

set(CMAKE_EXPORT_COMPILE_COMMANDS
    ON
    CACHE BOOL "" FORCE)

add_custom_command(
    TARGET starter
    PRE_BUILD
    COMMAND
        ${CMAKE_COMMAND} -E copy
        ${CMAKE_CURRENT_BINARY_DIR}/compile_commands.json
        ${CMAKE_CURRENT_SOURCE_DIR})
