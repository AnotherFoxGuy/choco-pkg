set(TMP "$ENV{TMP}")
set(CMCM_MODULE_DIR "${TMP}/CMCM_MODULE_DIR")

file(DOWNLOAD "https://anotherfoxguy.com/CMakeCM/CMakeCM.cmake" "${TMP}/CMakeCM.cmake")

include("${TMP}/CMakeCM.cmake")

include(JSONParser)

file(DOWNLOAD "https://api.github.com/repos/itchio/butler/tags" "${TMP}/butler-releases.json")
file(READ "${TMP}/butler-releases.json" ButlerReleasesJSON)

sbeParseJson(ButlerReleases ButlerReleasesJSON)

# debug
# foreach(var ${ButlerReleases})
#     message("${var} = ${${var}}")
# endforeach()

string(REPLACE "v" "" BUTLER_VERSION ${ButlerReleases_0.name})

sbeClearJson(ButlerReleases)

message("Latest version ${BUTLER_VERSION}")

string(REPLACE "." "_" BUTLER_VERSION_UNDERSCORE ${BUTLER_VERSION})

set(OUT_DIR "${CMAKE_SOURCE_DIR}/pkg")

set(BUTLER_ZIP "butler.zip")

message("Starting download...")
set(BUTLER_URL "https://broth.itch.ovh/butler/windows-amd64/${BUTLER_VERSION}/archive/default#/latest.zip")

file(DOWNLOAD "${BUTLER_URL}" "${TMP}/${BUTLER_ZIP}" SHOW_PROGRESS)

file(SHA256 "${TMP}/${BUTLER_ZIP}" htmp)
string(TOUPPER ${htmp} BUTLER_HASH)

configure_file(butler.nuspec.in "${OUT_DIR}/butler.nuspec")
configure_file(chocolateyinstall.ps1.in "${OUT_DIR}/tools/chocolateyinstall.ps1")

message("Running 'choco pack butler.nuspec'")
execute_process(COMMAND choco pack butler.nuspec WORKING_DIRECTORY "${OUT_DIR}")