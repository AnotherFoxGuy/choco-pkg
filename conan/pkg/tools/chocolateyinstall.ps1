# Install script for conan V1.32.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_32_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_32_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '444A6694319932FB2EC423CC4D1DE3A50DE7190556F8C44BA14A0E1CF7391AC9'
  checksumType   = 'sha256'
  checksum64     = 'D4816E74BDA3C52887F75A524B9631828343961C6392EC82A8AC8C4BA1BE2CF7'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
