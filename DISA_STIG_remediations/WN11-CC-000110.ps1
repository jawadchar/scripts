<#
.SYNOPSIS
Prevents information disclosure via insecure printer communications.

.NOTES
    Author          : Jawad Charafeddine
    LinkedIn        : linkedin.com/in/jawadchar/
    GitHub          : github.com/jawadchar
    Date Created    : 2026-02-01
    Last Modified   : 2026-04-08  
    Version         : 1.0
    CVEs            : Not CVE-specific. This mitigates: MITM risks over HTTP printing, general data exfil via print services
    Plugin IDs      : N/A
    STIG-ID         : 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run in elevated PowerShell.
    Verify:
    reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Printers" /v DisableHTTPPrinting
#>

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers"
if (!(Test-Path $Path)) { New-Item -Path $Path -Force | Out-Null }
New-ItemProperty -Path $Path -Name "DisableHTTPPrinting" -Value 1 -PropertyType DWord -Force
