# Install script for conan V1.31.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_31_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_31_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '940F56897DC093DAAE13612C89D80E63DBADEED37DCF25896DDD1AE66E3364B2'
  checksumType   = 'sha256'
  checksum64     = 'B33BBEF589182CC04BE4056F229E5D0871DB34DDCAF792C32E2B4CA076AC2832'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
