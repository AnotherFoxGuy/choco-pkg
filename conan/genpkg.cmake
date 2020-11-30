include("../get_latest_version.cmake")

get_latest_version("conan-io/conan")

set(OUT_DIR "${CMAKE_SOURCE_DIR}/pkg")

set(CONAN_INSTALLER_32 "conan-win-32_${VERSION_UNDERSCORE}.exe")
set(CONAN_INSTALLER_64 "conan-win-64_${VERSION_UNDERSCORE}.exe")

message("Starting download...")
set(CONAN_URL_32 "https://dl.bintray.com/conan/installers/${CONAN_INSTALLER_32}")
set(CONAN_URL_64 "https://dl.bintray.com/conan/installers/${CONAN_INSTALLER_64}")

file(DOWNLOAD "${CONAN_URL_32}" "$ENV{TMP}/${CONAN_INSTALLER_32}" SHOW_PROGRESS)
file(DOWNLOAD "${CONAN_URL_64}" "$ENV{TMP}/${CONAN_INSTALLER_64}" SHOW_PROGRESS)

file(SHA256 "$ENV{TMP}/${CONAN_INSTALLER_32}" htmp64)
file(SHA256 "$ENV{TMP}/${CONAN_INSTALLER_64}" htmp32)
string(TOUPPER ${htmp64} CONAN_HASH_32)
string(TOUPPER ${htmp32} CONAN_HASH_64)

configure_file(conan.nuspec.in "${OUT_DIR}/conan.nuspec")
configure_file(chocolateyinstall.ps1.in "${OUT_DIR}/tools/chocolateyinstall.ps1")
configure_file(chocolateyuninstall.ps1.in "${OUT_DIR}/tools/chocolateyuninstall.ps1")

message("Running 'choco pack conan.nuspec'")
execute_process(COMMAND choco pack conan.nuspec WORKING_DIRECTORY "${OUT_DIR}")


if (EXISTS "../APIKEY.txt")
    file(READ "../APIKEY.txt" APIKEY)
    message("Uploading Release")
    file(UPLOAD "${OUT_DIR}/conan.${VERSION}.nupkg"
            "https://api.bintray.com/content/anotherfoxguy/choco-pkg/conan/${VERSION}/conan.${VERSION}.nupkg"
            USERPWD ${APIKEY} SHOW_PROGRESS)
endif ()
