# Install script for conan V1.22.3


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_22_3.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_22_3.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '32712265B7F6CF0D5E7B6A11B9FE8B819C691DF19A82B6CE47D7DA292C01EA13'
  checksumType   = 'sha256'
  checksum64     = 'B511148A3315DC61FD7B96AD0349EB0F65DEE2C1B6EF48E7930B69CD4FDD741F'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
