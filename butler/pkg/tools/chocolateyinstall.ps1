# Install script for butler V15.31.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.zone/butler/windows-amd64/15.31.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '92E42F011DB049128583AC88258D3309D00C69018D2A48B378C7EB5709D9EFDE' -ChecksumType 'sha256'
