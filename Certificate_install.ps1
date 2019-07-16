
$env:COMPUTERNAME
If (!(Test-Path Z:)){New-PSDrive -Name Z -PSProvider FileSystem -Root "\\czstrts01\SHP_16_DATA"}
$pwss = convertto-securestring "mainstream" -asplaintext -force
Import-PfxCertificate -FilePath Z:\Install\cert\wildcard.cpi.cz-2018.pfx -CertStoreLocation Cert:\LocalMachine\My -Password $pwss
