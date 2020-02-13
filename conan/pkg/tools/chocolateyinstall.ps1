# Install script for conan V1.22.2


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_22_2.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_22_2.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '6A3154C5AE0F434E826089FC7A36CBCB1C98309D304AA5C284B2C36831A3D322'
  checksumType   = 'sha256'
  checksum64     = '85DD695A7388D1D675DFA0E561098FF31B45703E54EE3414A95F5FD3616ED95E'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
