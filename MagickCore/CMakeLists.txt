include(source_files.cmake)
include(configure.cmake)

_configure_version_h()
_configure_magick_baseconfig_h()

set( definitions
    MAGICKCORE_QUANTUM_DEPTH=${MAGICK_QUANTUM_DEPTH}
    MAGICKCORE_HDRI_ENABLE=$<BOOL:${MAGICK_ENABLE_HDRI}>
)

if()
    list(APPEND definitions )
endif()

set(target_name MagickCore)
add_library(${target_name} ${source_files} ${public_headers} ${private_headers})
target_compile_definitions(${target_name} PUBLIC ${definitions})
