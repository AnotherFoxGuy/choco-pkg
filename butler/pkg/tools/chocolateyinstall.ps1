# Install script for butler V15.19.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.ovh/butler/windows-amd64/15.19.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '314FD33D07CAD03E27C861225B3BE0AD16C2E10C26E34406B7BF4BBA0597923E' -ChecksumType 'sha256'
