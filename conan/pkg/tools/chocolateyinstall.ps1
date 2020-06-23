# Install script for conan V1.26.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_26_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_26_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '61CE9F5605464E89235D03FB1F98998B34ED19B1BE8CFD3541EB9B883074C472'
  checksumType   = 'sha256'
  checksum64     = 'FA07F8DD2DB4BA5F29F7FA09E88276CDD5AB194DD5881A61319C5A25EF459AA6'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
