# Install script for sccache V0.3.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.3.0-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/v0.3.0/sccache-v0.3.0-x86_64-pc-windows-msvc.tar.gz' -Checksum 'F25E927584D79D0D5AD489E04EF01B058DAD47EF2C1633A13D4C69DFB83BA2BE' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-v0.3.0-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.3.0-x86_64-pc-windows-msvc.tar" -Destination $toolsDir
