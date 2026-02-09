# Install script for butler V15.25.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.zone/butler/windows-amd64/15.25.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '41082BB86E5826264F8122222CBDF59235264278C4A0C1C6881F9007A8B132C3' -ChecksumType 'sha256'
