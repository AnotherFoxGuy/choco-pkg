# Install script for conan V1.21.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_21_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_21_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '07F10CCE1CA0C133716489BF67082E7DA4A1261B4B9A70262005E0755864684C'
  checksumType   = 'sha256'
  checksum64     = 'B6AD12784F987D08574462E9EF1D79ED8DF659E9701A489A9CC4EDF34290B184'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
