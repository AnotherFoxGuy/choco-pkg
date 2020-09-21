# Install script for conan V1.29.2


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_29_2.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_29_2.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'D090C2E4850B618C751A27960415BF01068AE7A8BE1CC10E97227E741B077043'
  checksumType   = 'sha256'
  checksum64     = '8FB1F3C2A3D7E9F4269B477E205E75963484461D94F3CFA9751D672B6C7C422F'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
