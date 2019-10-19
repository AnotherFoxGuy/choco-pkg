$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_19_2.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_19_2.exe'

# https://hash.online-convert.com/sha256-generator

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'A99EA7AF956D455B6CDA95ACC803E0E5CD4117517E8EF05D9ABE28F8E66531F7'
  checksumType   = 'sha256'
  checksum64     = '67AB64D74F882D91F8C86F1CDCC6FD8C3FBCF02DD502828C0A2AE336EBB1F5AF'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
