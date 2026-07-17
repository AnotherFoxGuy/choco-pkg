set(OUT_DIR "${CMAKE_SOURCE_DIR}/pkg")
file(GLOB NUPKG_FILES "${OUT_DIR}/*.nupkg")

message("Deleting ${NUPKG_FILES}")
file(REMOVE "${NUPKG_FILES}")

include("../get_latest_version.cmake")

get_latest_version("itchio/butler")

message("Latest version ${VERSION}")

set(BUTLER_ZIP "butler.zip")

message("Starting download...")
set(BUTLER_URL "https://broth.itch.zone/butler/windows-amd64/${VERSION}/archive/default#/latest.zip")

file(DOWNLOAD "${BUTLER_URL}" "$ENV{TMP}/${BUTLER_ZIP}" SHOW_PROGRESS)

file(SHA256 "$ENV{TMP}/${BUTLER_ZIP}" htmp)
string(TOUPPER ${htmp} BUTLER_HASH)

configure_file(butler.nuspec.in "${OUT_DIR}/butler.nuspec")
configure_file(chocolateyinstall.ps1.in "${OUT_DIR}/tools/chocolateyinstall.ps1")

message("Running 'choco pack butler.nuspec'")
execute_process(COMMAND choco pack butler.nuspec WORKING_DIRECTORY "${OUT_DIR}")
