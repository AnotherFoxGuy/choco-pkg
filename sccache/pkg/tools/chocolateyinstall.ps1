# Install script for sccache V0.2.12

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-0.2.12-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/0.2.12/sccache-0.2.12-x86_64-pc-windows-msvc.tar.gz' -Checksum 'FD05E91C59B9497D4EBAE311B47A982F2A6EB942DCA3C9C314CC1FB36F8BC64D' -ChecksumType'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-0.2.12-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-0.2.12-x86_64-pc-windows-msvc.tar" -Destination $toolsDir
