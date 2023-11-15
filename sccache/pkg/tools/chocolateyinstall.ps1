# Install script for sccache V0.7.2

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.2-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.7.2/sccache-v0.7.2-x86_64-pc-windows-msvc.zip' -Checksum '28DA094ECCD1F2D97967C0ACA01CC8C87236351DAC28507B3DADF39664C58C42' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.2-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
