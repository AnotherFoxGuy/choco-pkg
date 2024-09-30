# Install script for sccache V0.8.2

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.8.2-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.8.2/sccache-v0.8.2-x86_64-pc-windows-msvc.zip' -Checksum '2B35D159EFF6D662B38D2527E7F362BE90F5D9D8B9116F6197243F4B1CD926FF' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.8.2-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
