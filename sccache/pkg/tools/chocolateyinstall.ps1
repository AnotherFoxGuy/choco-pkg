# Install script for sccache V0.7.5

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.5-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.7.5/sccache-v0.7.5-x86_64-pc-windows-msvc.zip' -Checksum '2FC2607E68F24539AB1F08257EE836171A7F8DC3183D1B1499C1E16C139E502A' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.5-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
