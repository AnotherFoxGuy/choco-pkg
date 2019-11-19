# Install script for conan V1.20.4


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_20_4.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_20_4.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'ADF695EEAB852835C09C1E2C5053B4CE107BA63F45536851BB8F795C4DAF998D'
  checksumType   = 'sha256'
  checksum64     = 'ACDE4987EB7FFFC35A3285791F702651D505179ADC783C478760DE17F17CEEDE'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
