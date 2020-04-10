# Install script for conan V1.24.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_24_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_24_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = '2246EA7D8B918D918AB4D7B79C9D5B852BB056BBC0DDB48A72CEB4E9BE96C455'
  checksumType   = 'sha256'
  checksum64     = 'F1DF3AF4BC0BAD7F37E80EF048EEDF62F8A4482224BB085D97C2229A3C53BD9C'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
