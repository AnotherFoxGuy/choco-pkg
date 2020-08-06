# Install script for conan V1.28.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_28_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_28_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '2D288841699263BFDBD0938742A683A05F9D4E983E636B0B92B73865E44683A2'
  checksumType   = 'sha256'
  checksum64     = 'D0AE06DA81098C08DB9E1425A68A48B7C5E7C173CAC9885587FE0D9A5A4E40FD'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
