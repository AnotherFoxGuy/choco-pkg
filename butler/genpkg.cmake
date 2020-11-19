execute_process(COMMAND curl -s -L https://api.github.com/repos/itchio/butler/tags OUTPUT_VARIABLE VERSION_JSON)
string(JSON BUTLER_VERSION GET ${VERSION_JSON} 0 name)

message("Latest version ${BUTLER_VERSION}")

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