# Install script for sccache V0.4.1

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.4.1-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/v0.4.1/sccache-v0.4.1-x86_64-pc-windows-msvc.tar.gz' -Checksum '7508CFA20B045A891EBA2F7298AFB8FAEC886D40D10B844830160B096FE99874' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-v0.4.1-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.4.1-x86_64-pc-windows-msvc.tar" -Destination $toolsDir
