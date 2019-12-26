# Install script for conan V1.21.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_21_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_21_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '5D1CBD5BDD0EA29DFA01EDF5CA0C39E2CEA7310C3D04F9EAE676735804E5C4C6'
  checksumType   = 'sha256'
  checksum64     = 'DF4A280FC0DDCC046735FA502F522DB83437161E98C7CF80E3A50DE3028C152C'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
