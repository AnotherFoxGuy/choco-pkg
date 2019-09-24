$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_18_5.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_18_5.exe'

# https://hash.online-convert.com/sha256-generator

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '387298398F4AC4DE8A689E60EF4D86D53909C70B626F7B05161844D8BE31D738'
  checksumType   = 'sha256'
  checksum64     = '75A99B6CD0638EFE76422151E0B8B19FA9EC448622454F5F278F8EDD3941B2AF'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
