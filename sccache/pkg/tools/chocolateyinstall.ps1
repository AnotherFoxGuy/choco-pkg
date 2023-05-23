# Install script for sccache V0.5.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.0-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.5.0/sccache-v0.5.0-x86_64-pc-windows-msvc.zip' -Checksum '3105AD9BA85A1AD9A4B146921EAB10FA61D6BAD8DBEB1D6079CB2ED978D29568' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.0-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
