# Install script for sccache V0.5.4

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.4-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.5.4/sccache-v0.5.4-x86_64-pc-windows-msvc.zip' -Checksum '56907A176F87D9FC62B0392B82E650B06C8B056281B70C42A62DC9D955BFBF4F' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.5.4-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
