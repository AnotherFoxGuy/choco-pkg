$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_18_4.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_18_4.exe'

# https://hash.online-convert.com/sha256-generator

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'C799706319A6441DE572E7F2AC7A979E805E94C9902A84202DB5CA19868F35CE'
  checksumType   = 'sha256'
  checksum64     = '46EF25AE5E053227389FCD42EE8F2B35A088252E25641E244EE16DA06CAA1307'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
