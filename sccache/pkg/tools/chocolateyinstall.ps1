# Install script for sccache V0.7.4

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.4-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.7.4/sccache-v0.7.4-x86_64-pc-windows-msvc.zip' -Checksum '1B9809836E2E3E24A27CC447E5D801FAB9486EBF31C8597E77461C1764B2D72B' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.4-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
