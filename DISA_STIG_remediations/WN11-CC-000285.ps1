<#
.SYNOPSIS
Require secure RPC for RDP
Prevents RDP RPC downgrade & interception.

.NOTES
    Author          : Jawad Charafeddine
    LinkedIn        : linkedin.com/in/jawadchar/
    GitHub          : github.com/jawadchar
    Date Created    : 2026-03-01
    Last Modified   : 2026-03-01
    Version         : 1.0
    CVEs            : Mitigates classes of RDP abuse: CVE-2019-0708 (BlueKeep class), RPC downgrade attack vectors
    Plugin IDs      : N/A
    STIG-ID         : 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Verify:
    reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v EncryptRPCtraffic
#>

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services"
if (!(Test-Path $Path)) { New-Item -Path $Path -Force | Out-Null }
New-ItemProperty -Path $Path -Name "EncryptRPCtraffic" -Value 1 -PropertyType DWord -Force
