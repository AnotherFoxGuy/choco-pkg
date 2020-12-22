# Install script for sccache V0.2.14

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-0.2.14-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/0.2.14/sccache-0.2.14-x86_64-pc-windows-msvc.tar.gz' -Checksum 'BA6BF184D2B0A78978629AAEF0D9FE3CA57923E228D949B1932EC1A91AB4CEAC' -ChecksumType 'sha256'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-0.2.14-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-0.2.14-x86_64-pc-windows-msvc.tar" -Destination $toolsDir
