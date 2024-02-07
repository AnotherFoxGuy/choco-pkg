# Install script for sccache V0.7.7

$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Get-ChocolateyWebFile -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.7-x86_64-pc-windows-msvc.zip" -Url 'https://github.com/mozilla/sccache/releases/download/v0.7.7/sccache-v0.7.7-x86_64-pc-windows-msvc.zip' -Checksum '2859E9EA7DFC3855B330E4861CE94B531247B87763FF824E5CF32453FE716341' -ChecksumType 'sha256'
Get-ChocolateyUnzip -PackageName 'sccache' -FileFullPath "$toolsDir\sccache-v0.7.7-x86_64-pc-windows-msvc.zip" -Destination $toolsDir
