# Install script for conan V1.31.4


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_31_4.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_31_4.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '2672C48CBBCB50FB653FBF499093E1DB27F9AF6F69F47BEA29EE00681E0140A3'
  checksumType   = 'sha256'
  checksum64     = 'F78854957BFC485A36D175824633538E66116ADE0EC21C6FD8A65903CCBB0C9A'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
