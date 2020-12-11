# Install script for conan V1.32.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_32_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_32_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'F43DF229BB0CFA6B51AF5387B6179FA7A01C5CC76D5403555D58378BBDF691D2'
  checksumType   = 'sha256'
  checksum64     = 'C6DE913E0040B26FB31609B564E51927E8517D15DA884F987A8F860A12EC3FCE'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
