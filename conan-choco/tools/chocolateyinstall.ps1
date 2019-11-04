$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_20_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_20_0.exe'

# https://hash.online-convert.com/sha256-generator

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'C25AB32F82DAA2CB938E5FE8C5911DAD1AD8A897A43A421D085111B91E793C5A'
  checksumType   = 'sha256'
  checksum64     = 'F3394DFFD0FF16A380017291545F636FA24C69D9B4CCA7B08C6392125950A8C9'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
