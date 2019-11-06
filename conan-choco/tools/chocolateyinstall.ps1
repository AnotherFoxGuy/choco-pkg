$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_20_2.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_20_2.exe'

# https://hash.online-convert.com/sha256-generator

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '86975F9132D8AB74E72AFFDE6930DEE034D8769379E3FCCD5114E5C1EFE3119B'
  checksumType   = 'sha256'
  checksum64     = '2F85E798B8CC4B919F73E6851A1C82A2892D79C49D9E4E8F660D1DB82430F91B'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
