# Install script for sccache V0.5.3

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.3-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.5.3/sccache-v0.5.3-x86_64-pc-windows-msvc.zip' -Checksum '5CBABE3C1F6AD4B7ED769027E385656613380ABF519EAEF0211AF091CB8CC0C9' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.3-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
