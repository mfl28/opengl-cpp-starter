cmake_minimum_required(VERSION 3.18)

include(FetchContent)

set(GLM_GIT_TAG
    "0.9.9.8"
    CACHE STRING "GLM git release tag.")

FetchContent_Declare(
    glm-github
    GIT_REPOSITORY https://github.com/g-truc/glm.git
    GIT_TAG ${GLM_GIT_TAG})

FetchContent_MakeAvailable(glm-github)
