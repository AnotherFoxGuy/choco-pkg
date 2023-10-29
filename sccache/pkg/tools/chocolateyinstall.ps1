# Install script for sccache V0.6.0

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.6.0-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.6.0/sccache-v0.6.0-x86_64-pc-windows-msvc.zip' -Checksum '387CA4DC85BA5AFFEE1C40ABC18EB17BE5158E1B51706ACE212BEF703CCDF246' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.6.0-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
