# Install script for conan V1.27.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_27_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_27_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '1494EC0BEAB602D7FB8A14BED95689D7AEA10125245131C794359D960D01020C'
  checksumType   = 'sha256'
  checksum64     = 'C340D8D4FC6E2FEBCFCF2680C2CEA0FDDC6954B9EB523682C3A08625F0EEB188'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
