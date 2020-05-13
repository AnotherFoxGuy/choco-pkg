# Install script for conan V1.25.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_25_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_25_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'AA48CFD08106D8D654C31D93C19A850B182EEF07A047CE092045663DD2D1E6D3'
  checksumType   = 'sha256'
  checksum64     = 'DB1ADEACDC3E545FE2B7AD3B3001F00D748E0B5AF6A0214B645A01A756047316'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
