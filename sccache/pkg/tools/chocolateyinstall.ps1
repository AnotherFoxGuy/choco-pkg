# Install script for sccache V0.9.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.9.0-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.9.0/sccache-v0.9.0-x86_64-pc-windows-msvc.zip' -Checksum '353C81CE32D6A521EAFB83D78FD9852B40A609A297054470E3A96CDC5BC76B6B' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.9.0-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
