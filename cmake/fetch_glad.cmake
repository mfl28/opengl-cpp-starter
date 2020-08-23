cmake_minimum_required(VERSION 3.14)

set(GLAD_GIT_TAG
    "v0.1.33"
    CACHE STRING "GLAD release version git tag.")

include(FetchContent)

FetchContent_Declare(
    glad-github
    GIT_REPOSITORY https://github.com/Dav1dde/glad.git
    GIT_TAG ${GLAD_GIT_TAG})

set(GLAD_PROFILE
    "core"
    CACHE STRING "" FORCE)

FetchContent_MakeAvailable(glad-github)
