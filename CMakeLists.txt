cmake_minimum_required(VERSION 3.14)

project(opengl-cpp-starter LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

set(EXECUTABLE_NAME starter)

include(fetch_glfw)
include(fetch_glad)
include(fetch_glm)
include(fetch_stb_image)

add_executable(${EXECUTABLE_NAME})
target_sources(${EXECUTABLE_NAME} PRIVATE src/main.cpp src/utils.cpp)
target_include_directories(${EXECUTABLE_NAME} PUBLIC include)

target_link_libraries(${EXECUTABLE_NAME} PUBLIC glfw glad glm stb_image)

option(USE_ASSIMP "Determines whether to fetch and build assimp as part of the project." OFF)

if(USE_ASSIMP)
    include(fetch_assimp)
    target_link_libraries(${EXECUTABLE_NAME} PUBLIC assimp)
endif()

set_target_properties(${EXECUTABLE_NAME} PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES)

if(CMAKE_EXPORT_COMPILE_COMMANDS)
    # Copy compile_commands.json to root folder (useful when using code completion tools
    # such as clangd).
    add_custom_command(
        TARGET ${EXECUTABLE_NAME}
        POST_BUILD
        COMMAND
            ${CMAKE_COMMAND} -E copy
            ${CMAKE_CURRENT_BINARY_DIR}/compile_commands.json
            ${CMAKE_CURRENT_SOURCE_DIR})
endif()
