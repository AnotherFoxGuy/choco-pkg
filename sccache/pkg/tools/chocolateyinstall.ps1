# Install script for sccache V0.17.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.17.0-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.17.0/sccache-v0.17.0-x86_64-pc-windows-msvc.zip' -Checksum 'E94CFC5B58CBE439302F586C1D1BD7980C2CD371D47BDF385ADE657411E6F3AC' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.17.0-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
