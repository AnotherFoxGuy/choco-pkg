$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_20_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_20_1.exe'

# https://hash.online-convert.com/sha256-generator

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '40256895F7DB3849661F1A527523332340F77E3E9A2679909664D1DB5A9AF73A'
  checksumType   = 'sha256'
  checksum64     = 'F7B4E7CB686A43E487FA9F5749C314606274467B6DE447A5F99C9FEC45988071'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
