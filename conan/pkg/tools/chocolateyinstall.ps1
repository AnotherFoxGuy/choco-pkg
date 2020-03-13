# Install script for conan V1.23.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_23_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_23_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '53C5BC5889E435A67617B07713148817305A57E19413C32C0C74BDAA2A288774'
  checksumType   = 'sha256'
  checksum64     = 'D98BA5CFE44A10D668410FF70C5A7413505473FBEB0B3B3902FB7D38271B3087'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
