# Install script for butler V15.29.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.zone/butler/windows-amd64/15.29.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '3FDB262F2BC4C56ADFEC80942E74DE2811BFA49C828FAAE7EAB2A9D1E5DC516A' -ChecksumType 'sha256'
