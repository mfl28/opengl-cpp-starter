cmake_minimum_required(VERSION 3.18)

include(FetchContent)

set(ASSIMP_GIT_TAG "v5.0.1" CACHE STRING "Assimp github release tag.")

FetchContent_Declare(
    assimp-github
    GIT_REPOSITORY https://github.com/assimp/assimp.git
    GIT_TAG ${ASSIMP_GIT_TAG}
    )

set(ASSIMP_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(ASSIMP_INSTALL OFF CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(assimp-github)
   
