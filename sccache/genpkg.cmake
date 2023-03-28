
include("../get_latest_version.cmake")

get_latest_version("mozilla/sccache")

message("Latest version ${VERSION}")

set(OUT_DIR "${CMAKE_SOURCE_DIR}/pkg")
set(SCCACHE_FOLDER "sccache-v${VERSION}-x86_64-pc-windows-msvc")
set(SCCACHE_ZIP "${SCCACHE_FOLDER}.zip")

message("Starting download...")
set(SCCACHE_URL "https://github.com/mozilla/sccache/releases/download/v${VERSION}/${SCCACHE_ZIP}")

file(DOWNLOAD "${SCCACHE_URL}" "$ENV{TMP}/${SCCACHE_ZIP}" SHOW_PROGRESS)

file(SHA256 "$ENV{TMP}/${SCCACHE_ZIP}" htmp)
string(TOUPPER ${htmp} SCCACHE_HASH)

configure_file(sccache.nuspec.in "${OUT_DIR}/sccache.nuspec")
configure_file(chocolateyinstall.ps1.in "${OUT_DIR}/tools/chocolateyinstall.ps1")

message("Running 'choco pack sccache.nuspec'")
execute_process(COMMAND choco pack sccache.nuspec WORKING_DIRECTORY "${OUT_DIR}")
