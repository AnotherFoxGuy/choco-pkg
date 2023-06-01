# Install script for sccache V0.5.1

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.1-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.5.1/sccache-v0.5.1-x86_64-pc-windows-msvc.zip' -Checksum '87A2445F6B8E73163C60114E53A54EACE229CEC232DED8D64EA0E3C2DB2ABDAC' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.1-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
