# Install script for butler V15.30.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.zone/butler/windows-amd64/15.30.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum 'F6D06FF12A7E1C7D4A5BD7465AA000283528E3AE2EC354448454E6FFF1F0F744' -ChecksumType 'sha256'
