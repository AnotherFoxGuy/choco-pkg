$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_19_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_19_0.exe'

# https://hash.online-convert.com/sha256-generator

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'DC519763EC7822E2B41F3621E40F006AE69AD9F7EF33F6C2CAC149AE377D6D91'
  checksumType   = 'sha256'
  checksum64     = 'B09FB89504E92E86768596C4DFDEC08D0C843726C305A546985636CC9A6A2089'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
