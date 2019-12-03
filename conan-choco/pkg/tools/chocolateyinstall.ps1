# Install script for conan V1.20.5


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_20_5.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_20_5.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'EAA1D7572806724C6F93C412689AAA8A53DB16048B0B74604A3BC5CDCEB1A515'
  checksumType   = 'sha256'
  checksum64     = 'D82C0E13A48BFEF60CDF6005339BE3E32BCE86396A710A13EA000199489B8FF2'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
