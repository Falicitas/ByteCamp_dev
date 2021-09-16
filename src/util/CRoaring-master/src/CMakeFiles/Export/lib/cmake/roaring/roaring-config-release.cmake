#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "roaring::roaring" for configuration "Release"
set_property(TARGET roaring::roaring APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(roaring::roaring PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "roaring::roaring-headers;roaring::roaring-headers-cpp"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libroaring.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS roaring::roaring )
list(APPEND _IMPORT_CHECK_FILES_FOR_roaring::roaring "${_IMPORT_PREFIX}/lib/libroaring.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
