cmake_minimum_required(VERSION 3.9)

project(ImageMagick VERSION 7.0.7)

set(MAGICK_DATA_DIR share)
set(MAGICK_DOC_DIR ${MAGICK_DATA_DIR}/doc)

include(cmake/options.cmake)

include_directories(
    ${CMAKE_SOURCE_DIR}
    ${CMAKE_BINARY_DIR}
)

if(MSVC)
    # Preprocessor definitions that we want to affect all Magick targets, but should be private
    # (i.e. not exported in install targets). Other downstream targets that depend on ImageMagick
    # should not inherit these.
    add_definitions(
        -D_CRT_SECURE_NO_WARNINGS
    )
endif()

add_subdirectory(MagickCore)
