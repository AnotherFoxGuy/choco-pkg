# Install script for sccache V0.8.1

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.8.1-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.8.1/sccache-v0.8.1-x86_64-pc-windows-msvc.zip' -Checksum '36FA3E7BCD0E85590B6F16E14C44AC4EE4B28163509157CC5D7286CB0015578B' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.8.1-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
