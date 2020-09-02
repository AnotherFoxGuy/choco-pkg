# Install script for conan V1.29.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_29_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_29_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'EFA200AE875C32B843DA54A3C6A9BDB0C3B0FB3C4FB27F5496A46C8FE438357B'
  checksumType   = 'sha256'
  checksum64     = '2B36E54B5C2357C9C471339242358E99301D664B1F6063E9D75483CF56E0230C'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
