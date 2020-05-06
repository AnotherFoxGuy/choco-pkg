# Install script for conan V1.25.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_25_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_25_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '9E1CF76F3CFA9FF74C6BCEE8C1393E17CD0F39855055CE7E910EA7C823A4E9FE'
  checksumType   = 'sha256'
  checksum64     = '8C7FCE0FCFB660831DE55BEBAC5F2D0AB8700AE9089B13135D34DF988CBB633E'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
