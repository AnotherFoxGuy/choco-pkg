# Install script for sccache V0.7.6

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.6-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.7.6/sccache-v0.7.6-x86_64-pc-windows-msvc.zip' -Checksum 'CE6F97CF33C9137A71C72912032E3A2D3F3ED72D0C3C3E6C27890FAFCA5D11AE' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.6-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
