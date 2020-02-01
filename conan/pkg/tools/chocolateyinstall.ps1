# Install script for conan V1.21.2


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_21_2.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_21_2.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '403EC6448FC79156D669E9730291DF1BA0890488D04F30B95D8FDDC35D94EDF3'
  checksumType   = 'sha256'
  checksum64     = 'A4A0151B6EF58F3643F1CD0939B1F125561CF7FB50D35F7A084231C47065D312'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
