# Install script for conan V1.30.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_30_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_30_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'F6FBED4C658EA0E5BB671461707A503DC37FC5737A5D57C20E296A5A9DD5D68B'
  checksumType   = 'sha256'
  checksum64     = 'E3E834717CE7D81E5B8A1BE96A40EE3A5A6276C8CC19B1DCE725549A4F705229'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
