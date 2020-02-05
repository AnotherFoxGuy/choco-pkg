# Install script for conan V1.22.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_22_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_22_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '86F074A63DE427FA25ECCE43FD27C3FE251710DBE1F28813F19CFDF4E18B7B2E'
  checksumType   = 'sha256'
  checksum64     = '16FAB95B98485CFA226D9F87F77ADB5411073E4D298219C3704D6E457E60B6FD'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
