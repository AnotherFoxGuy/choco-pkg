# Install script for conan V1.20.3


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_20_3.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_20_3.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'A66CDC961ED198B2952B09374ACB0E5FD9AD3589F24F2955B3C70F7AB9B1991E'
  checksumType   = 'sha256'
  checksum64     = '4383361E84BAC1BFD72120D039F972D1D406CF15A0E463ADEB8523ACF733E7B9'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
