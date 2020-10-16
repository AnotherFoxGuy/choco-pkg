# Install script for conan V1.30.2


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_30_2.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_30_2.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'C190CE3CA491F02EC71F5A8EC36A33614F00156AB7081AA7D0DB243E093F742D'
  checksumType   = 'sha256'
  checksum64     = '51EF2FD7180465D597C0A5401709F4D8B1D2E2111F88AC234033C3C7EB503839'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
