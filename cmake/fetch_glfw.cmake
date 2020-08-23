cmake_minimum_required(VERSION 3.14)

set(GLFW_GIT_TAG
    "3.3.2"
    CACHE STRING "GLFW release version git tag.")

include(FetchContent)

FetchContent_Declare(
    glfw-github
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG ${GLFW_GIT_TAG})

set(GLFW_BUILD_DOCS
    OFF
    CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS
    OFF
    CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES
    OFF
    CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(glfw-github)
