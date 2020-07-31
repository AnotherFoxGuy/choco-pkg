# Install script for conan V1.28.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_28_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_28_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'FA4A92EE23A2D324647499E39F2A3154888BCF57211E498BB38D8EB56FA06629'
  checksumType   = 'sha256'
  checksum64     = '2A3931DC738D8B381C679535DA9DE5132FFE4B8BF1F399323AE4AF1202C9E570'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
