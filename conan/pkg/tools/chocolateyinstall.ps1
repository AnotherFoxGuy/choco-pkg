# Install script for conan V1.31.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_31_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_31_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '53157B03693060C264671B00A81940E1C605D9F66459FF1A9F213EDF99B640F9'
  checksumType   = 'sha256'
  checksum64     = 'D4587FAB4B180BD3AAAF466FCB9A90043E037A600B776D8A188DA9CF85E99783'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
