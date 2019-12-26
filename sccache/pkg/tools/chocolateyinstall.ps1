# Install script for sccache V0.2.12

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache'  -FileFullPath "$toolsDir\sccache-0.2.12-x86_64-pc-windows-msvc.tar.gz" -Url 'https://github.com/mozilla/sccache/releases/download/0.2.12/sccache-0.2.12-x86_64-pc-windows-msvc.tar.gz'
Get-ChocolateyUnzip -FileFullPath "$toolsDir\sccache-0.2.12-x86_64-pc-windows-msvc.tar.gz" -Destination $toolsDir
Install-ChocolateyZipPackage -PackageName 'sccache' -File "$toolsDir\sccache-0.2.12-x86_64-pc-windows-msvc.tar" -UnzipLocation $toolsDir
