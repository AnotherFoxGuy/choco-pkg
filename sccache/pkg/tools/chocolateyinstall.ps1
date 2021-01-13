# Install script for sccache V0.2.15

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.2.15-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/v0.2.15/sccache-v0.2.15-x86_64-pc-windows-msvc.tar.gz' -Checksum '3DFECDBB85561C55E899D3AD039C671F806D283C49DA0721C2EF5C1310D87965' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-v0.2.15-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.2.15-x86_64-pc-windows-msvc.tar" -Destination $toolsDir
