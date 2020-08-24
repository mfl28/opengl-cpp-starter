cmake_minimum_required(VERSION 3.14)

project(opengl-cpp-starter LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

include(fetch_glfw)
include(fetch_glad)
include(fetch_glm)

add_executable(starter)
target_sources(starter PRIVATE src/main.cpp src/utils.cpp)
target_include_directories(starter PUBLIC include)

target_link_libraries(starter PUBLIC glfw glad glm)

option(
    AUTO_CREATE_COMPILE_COMMANDS
    "Automatically create and copy compile commands file to root folder for linters."
    OFF)

if(CMAKE_EXPORT_COMPILE_COMMANDS)
    add_custom_command(
        TARGET starter
        POST_BUILD
        COMMAND
            ${CMAKE_COMMAND} -E copy
            ${CMAKE_CURRENT_BINARY_DIR}/compile_commands.json
            ${CMAKE_CURRENT_SOURCE_DIR})
endif()
