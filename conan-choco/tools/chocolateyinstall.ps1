$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_18_2.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_18_2.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '8616D2AB70B3E5A9C5033BC43F6630E4142816A28A64CC695045FA82DDDEA6FC'
  checksumType   = 'sha256'
  checksum64     = '2CA9A88A01AC2202390BEBC9EFC60D70B9F09204066515FD94A6C51DD3C0350D'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
