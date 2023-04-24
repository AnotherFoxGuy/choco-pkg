# Install script for sccache V0.4.2

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.4.2-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.4.2/sccache-v0.4.2-x86_64-pc-windows-msvc.zip' -Checksum '1C0029A1456FE203EB9F92E0E9467F44A3A9535F29C22DC66C01C3073DDD05B9' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.4.2-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
