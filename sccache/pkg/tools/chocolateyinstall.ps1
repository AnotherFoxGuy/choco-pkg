# Install script for sccache V0.19.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.19.0-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.19.0/sccache-v0.19.0-x86_64-pc-windows-msvc.zip' -Checksum '28BE8C61F6B2C89B9EB2869F6AF7F78E6F992E78A8ABAE0CE855FCC129CBEAC1' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.19.0-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
