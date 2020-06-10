# Install script for conan V1.26.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_26_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_26_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'AAD758F31FF965699D35021EF948A6E852CC08038C1E7F0D7224F01FD61F261F'
  checksumType   = 'sha256'
  checksum64     = 'DC953D128700A33FD8F7876E341172C9B2083F5392B318CCB2692203CF7BFDC0'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
