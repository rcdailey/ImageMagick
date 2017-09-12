cmake_minimum_required(VERSION 3.9)

project(ImageMagick VERSION 7.0.7)

set(MAGICK_DATA_DIR share)
set(MAGICK_DOC_DIR ${MAGICK_DATA_DIR}/doc)

include(cmake/options.cmake)

include_directories(
    ${CMAKE_SOURCE_DIR}
    ${CMAKE_BINARY_DIR}
)

add_subdirectory(MagickCore)
