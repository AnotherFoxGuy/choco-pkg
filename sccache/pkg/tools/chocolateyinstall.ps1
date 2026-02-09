# Install script for sccache V0.14.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.14.0-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.14.0/sccache-v0.14.0-x86_64-pc-windows-msvc.zip' -Checksum '74A3FFD4207E8E0E62AF7747BD03B42DEAB0F6DABC7EF0A8CDD950F83F1037C8' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.14.0-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
