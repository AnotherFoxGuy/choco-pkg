# Install script for butler V15.18.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'butler' `
    -Url 'https://broth.itch.ovh/butler/windows-amd64/15.18.0/archive/default#/latest.zip' `
    -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
    -Checksum '5D1D397521817DFEB9285E6FD820CD935FF727D57607B7CE166A4807A06EE3CA' -ChecksumType 'sha256'
