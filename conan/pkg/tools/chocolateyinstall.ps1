# Install script for conan V1.25.2


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_25_2.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_25_2.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'EBEE946B64197DDE84B10D0B65467CFB422926D1FEDE28877DBA92BDC2D1EDEC'
  checksumType   = 'sha256'
  checksum64     = 'F9EC0AB78F9B62241FB090AE4F247D678FE9775BD7A390FA15CE94C983D9F5E6'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
