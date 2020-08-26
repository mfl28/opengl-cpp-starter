cmake_minimum_required(VERSION 3.18)

include(FetchContent)

FetchContent_Declare(
    stb_image-github
    URL https://raw.githubusercontent.com/nothings/stb/master/stb_image.h
    DOWNLOAD_NO_EXTRACT ON)

FetchContent_MakeAvailable(stb_image-github)

add_library(stb_image INTERFACE)
target_sources(stb_image INTERFACE ${stb_image-github_SOURCE_DIR}/stb_image.h)
target_include_directories(stb_image INTERFACE ${stb_image-github_SOURCE_DIR})
target_compile_definitions(stb_image INTERFACE STB_IMAGE_IMPLEMENTATION)
