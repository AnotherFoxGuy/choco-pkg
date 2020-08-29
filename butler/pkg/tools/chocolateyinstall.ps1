# Install script for butler V15.20.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.ovh/butler/windows-amd64/15.20.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '74ED05EBD8F2ABC0B5E9C7CCAEAD838F62CB5CEDA5F9EDD721BF8C73609410F7' -ChecksumType 'sha256'
