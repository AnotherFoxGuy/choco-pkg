# Install script for sccache V0.3.1

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.3.1-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/v0.3.1/sccache-v0.3.1-x86_64-pc-windows-msvc.tar.gz' -Checksum 'B8FC47E12DBC18A2A611DD5F037D0980F873C80A1ADB26FA2F48CCA0B0184ADB' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-v0.3.1-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.3.1-x86_64-pc-windows-msvc.tar" -Destination $toolsDir
