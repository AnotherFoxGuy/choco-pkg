# Install script for butler V15.21.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.ovh/butler/windows-amd64/15.21.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum 'E5381A1EC38ABE8C2F3BF742DC22E897901E7DEF22D20EBC8FD4490D52038D35' -ChecksumType 'sha256'
