# Install script for sccache V0.3.3

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.3.3-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/v0.3.3/sccache-v0.3.3-x86_64-pc-windows-msvc.tar.gz' -Checksum 'B37B55B6E45737562450A98CD4E5C91E58540FEBDBBDA5C575ACF80314A2B3EA' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-v0.3.3-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.3.3-x86_64-pc-windows-msvc.tar" -Destination $toolsDir
