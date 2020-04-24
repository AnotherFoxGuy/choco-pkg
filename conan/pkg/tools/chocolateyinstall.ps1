# Install script for conan V1.24.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_24_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_24_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '2E38029671BABADC248566EDA934B8ACFA8219CE84BD84CBE1EABFCA48BC7CAD'
  checksumType   = 'sha256'
  checksum64     = 'F5E96DB4C9631AE480B814A4D84E039842F97BED2C21790D472B0F385E80F691'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
