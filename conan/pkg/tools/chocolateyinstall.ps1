# Install script for conan V1.30.0


$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bintray.com/conan/installers/conan-win-32_1_30_0.exe'
$url64      = 'https://dl.bintray.com/conan/installers/conan-win-64_1_30_0.exe'

$packageArgs = @{
  packageName    = 'Conan'
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Conan'
  checksum       = 'DB25FCD1BA4689EB25B7BDB46FBB2488E3C0B72201074B662F536AC1055FE51D'
  checksumType   = 'sha256'
  checksum64     = '71744E28A63D8447EAA977772E955821C346A60ACDD0BC3DDC9C57F09C6D15AB'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT'
}

Install-ChocolateyPackage @packageArgs
