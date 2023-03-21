# Install script for sccache V0.4.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.4.0-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/v0.4.0/sccache-v0.4.0-x86_64-pc-windows-msvc.tar.gz' -Checksum 'A8776E49862D1EA8EB9313F2EFA943F4679670A777530F55E415977B9CAE54D0' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-v0.4.0-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.4.0-x86_64-pc-windows-msvc.tar" -Destination $toolsDir
