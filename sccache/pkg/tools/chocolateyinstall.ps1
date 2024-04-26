# Install script for sccache V0.8.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.8.0-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.8.0/sccache-v0.8.0-x86_64-pc-windows-msvc.zip' -Checksum 'E1F7BE5DE9D0B3ECB7815ADEE0A4EB75B03D71D610A41493A30D3AA6A2906B17' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.8.0-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
