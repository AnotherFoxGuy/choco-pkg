# Install script for butler V15.24.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.zone/butler/windows-amd64/15.24.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '03DDB047B62BF40319897EF539853D2F08EA2636002EED0E245C4A5668268240' -ChecksumType 'sha256'
