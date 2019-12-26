set(TMP "$ENV{TMP}")
set(CMCM_MODULE_DIR "${TMP}/CMCM_MODULE_DIR")

file(DOWNLOAD "https://anotherfoxguy.com/CMakeCM/CMakeCM.cmake" "${TMP}/CMakeCM.cmake")

include("${TMP}/CMakeCM.cmake")

include(JSONParser)

file(DOWNLOAD "https://api.github.com/repos/mozilla/sccache/releases/latest" "${TMP}/sccache-releases.json")
file(READ "${TMP}/sccache-releases.json" ConanReleasesJSON)

sbeParseJson(ConanReleases ConanReleasesJSON)

# debug
# foreach(var ${ConanReleases})
#     message("${var} = ${${var}}") sccache
# endforeach()

set(SCCACHE_VERSION "${ConanReleases.tag_name}")

sbeClearJson(ConanReleases)

message("Latest version ${SCCACHE_VERSION}")

string(REPLACE "." "_" SCCACHE_VERSION_UNDERSCORE ${SCCACHE_VERSION})

set(OUT_DIR "${CMAKE_SOURCE_DIR}/pkg")

set(SCCACHE_FOLDER "sccache-${SCCACHE_VERSION}-x86_64-pc-windows-msvc")
set(SCCACHE_ZIP "${SCCACHE_FOLDER}.tar.gz")

message("Starting download...")
set(SCCACHE_URL "https://github.com/mozilla/sccache/releases/download/${SCCACHE_VERSION}/${SCCACHE_ZIP}")

file(DOWNLOAD "${SCCACHE_URL}" "${TMP}/${SCCACHE_ZIP}" SHOW_PROGRESS)

file(SHA256 "${TMP}/${SCCACHE_ZIP}" htmp)
string(TOUPPER ${htmp} SCCACHE_HASH)

configure_file(sccache.nuspec.in "${OUT_DIR}/sccache.nuspec")
configure_file(chocolateyinstall.ps1.in "${OUT_DIR}/tools/chocolateyinstall.ps1")

message("Running 'choco pack sccache.nuspec'")
execute_process(COMMAND choco pack sccache.nuspec WORKING_DIRECTORY "${OUT_DIR}")