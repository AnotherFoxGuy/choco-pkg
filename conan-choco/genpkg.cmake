set(TMP "$ENV{TMP}")

set(CONAN_VERSION "1.20.3")
string(REPLACE "." "_" CONAN_VERSION_UNDERSCORE ${CONAN_VERSION})

set(OUT_DIR "${CMAKE_SOURCE_DIR}/pkg")

set(CONAN_INSTALLER_32 "conan-win-32_${CONAN_VERSION_UNDERSCORE}.exe")
set(CONAN_INSTALLER_64 "conan-win-64_${CONAN_VERSION_UNDERSCORE}.exe")

message("Starting download...")
set(CONAN_URL_32 "https://dl.bintray.com/conan/installers/${CONAN_INSTALLER_32}")
set(CONAN_URL_64 "https://dl.bintray.com/conan/installers/${CONAN_INSTALLER_64}")

file(DOWNLOAD "${CONAN_URL_32}" "${TMP}/${CONAN_INSTALLER_32}" SHOW_PROGRESS)
file(DOWNLOAD "${CONAN_URL_64}" "${TMP}/${CONAN_INSTALLER_64}" SHOW_PROGRESS)

file(SHA256 "${TMP}/${CONAN_INSTALLER_32}" htmp64)
file(SHA256 "${TMP}/${CONAN_INSTALLER_64}" htmp32)
string(TOUPPER ${htmp64} CONAN_HASH_32)
string(TOUPPER ${htmp32} CONAN_HASH_64)

configure_file(conan.nuspec.in              "${OUT_DIR}/conan.nuspec")
configure_file(chocolateyinstall.ps1.in     "${OUT_DIR}/tools/chocolateyinstall.ps1")
configure_file(chocolateyuninstall.ps1.in   "${OUT_DIR}/tools/chocolateyuninstall.ps1")

message("Running 'choco pack conan.nuspec'")
execute_process(COMMAND choco pack conan.nuspec WORKING_DIRECTORY "${OUT_DIR}") 
