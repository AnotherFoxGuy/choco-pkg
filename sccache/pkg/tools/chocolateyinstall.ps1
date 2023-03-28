# Install script for sccache V0.4.1

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.4.1-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.4.1/sccache-v0.4.1-x86_64-pc-windows-msvc.zip' -Checksum 'A0F205B20BCA1785048C8F9C91E6B845FEC401D121024DEDA1287167E281D803' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.4.1-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
