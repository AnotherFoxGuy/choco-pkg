# Install script for conan V1.29.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_29_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_29_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '808AD4EC6293735F6B6D8D3A17D7768613FDB354C6BE8997291433239C40AB0C'
  checksumType   = 'sha256'
  checksum64     = 'B09C0A6DF6FE103D67E7DD6911F21E723EC9A50F94FF61D8502B01F840B473BD'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
