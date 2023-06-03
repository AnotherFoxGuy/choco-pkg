# Install script for sccache V0.5.2

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.2-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.5.2/sccache-v0.5.2-x86_64-pc-windows-msvc.zip' -Checksum 'E7F0579A50806E62BBF27F4EE18A394D763ACAA6F34B26ED562A58D854867FFA' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.2-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
