# Install script for conan V1.22.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_22_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_22_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '7706B08D296F9623098F1FDACB84D1AE16DF8012064006C59CE6FC7772A689BB'
  checksumType   = 'sha256'
  checksum64     = 'C722E5DA8653E741AB245B18F40AEE84DB0D805E55DD68B12FF12753F0AF4D8F'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
