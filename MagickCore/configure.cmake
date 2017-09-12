include(CheckIncludeFile)

######################################################################
##
######################################################################
function(_configure_version_h)
    # Use function for this to keep variables required for configure_file() out
    # of the calling/parent scope.
    set(DOCUMENTATION_PATH ${MAGICK_DOC_PATH}/${PROJECT_NAME}-${PROJECT_VERSION})
    set(MAGICKPP_LIBRARY_CURRENT todo)
    set(MAGICKPP_LIBRARY_CURRENT_MIN todo)
    set(MAGICKPP_LIBRARY_VERSION_INFO todo)
    set(MAGICKPP_LIB_VERSION_TEXT ${PROJECT_VERSION})
    set(MAGICK_LIBRARY_CURRENT todo)
    set(MAGICK_LIBRARY_CURRENT_MIN todo)
    set(MAGICK_LIB_VERSION_NUMBER ${PROJECT_VERSION})
    set(MAGICK_LIB_VERSION_TEXT todo)
    set(MAGICK_TARGET_CPU todo)
    set(PACKAGE_LIB_VERSION ${PROJECT_VERSION})
    set(PACKAGE_NAME MagickCore)
    set(PACKAGE_RELEASE_DATE todo)
    set(PACKAGE_VERSION_ADDENDUM todo)
    configure_file(version.h.in version.h @ONLY)
endfunction()

######################################################################
##
######################################################################
function(_configure_magick_baseconfig_h)
    set(MAGICKCORE_EXCLUDE_DEPRECATED ${MAGICK_EXCLUDE_DEPRECATED})

    check_include_file(pthreads.h MAGICKCORE_THREAD_SUPPORT)

    configure_file(magick-baseconfig.h.in magick-baseconfig.h @ONLY)
endfunction()
