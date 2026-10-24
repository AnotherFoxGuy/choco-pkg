# Install script for butler V15.32.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.zone/butler/windows-amd64/15.32.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '5902C488B86BB3518CA00BF4E706D7687F229E3F0F28653CD943348EA9EC8878' -ChecksumType 'sha256'
