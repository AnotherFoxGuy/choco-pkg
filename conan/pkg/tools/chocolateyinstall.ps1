# Install script for conan V1.33.1


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_33_1.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_33_1.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'DF83E5EB14FA2F2752EF576158F846A6AEB3290AFC019EDC3BCB5AB0283E3359'
  checksumType   = 'sha256'
  checksum64     = '24DE5AE812F42B4B3049B0219642CB1ECCCDF25C093F41EF448C368C3C665764'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
