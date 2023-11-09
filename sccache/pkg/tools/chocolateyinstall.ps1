# Install script for sccache V0.7.1

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.1-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.7.1/sccache-v0.7.1-x86_64-pc-windows-msvc.zip' -Checksum '1F752B34B3937E7D1A4D6EBECF337BDF5E8B96F0A5E02F8BD2558C59EE9182E4' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.1-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
