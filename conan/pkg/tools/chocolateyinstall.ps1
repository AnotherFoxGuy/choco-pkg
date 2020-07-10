# Install script for conan V1.27.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_27_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_27_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'A1897FBAC2951A739E2C72C55B31A6E754CD37648CC6B44CC90D3F926C798EEC'
  checksumType   = 'sha256'
  checksum64     = 'E128A70A0C9C77FAE7C1AD165345084A220BFD706EA5CF1BB4C516A211A2F72C'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
