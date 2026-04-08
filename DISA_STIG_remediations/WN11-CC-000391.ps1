<#
.SYNOPSIS
Disable Internet Explorer - legacy browser attack surface.

.NOTES
    Author          : Jawad Charafeddine
    LinkedIn        : linkedin.com/in/jawadchar/
    GitHub          : github.com/jawadchar
    Date Created    : 2024-03-01
    Last Modified   : 2024-03-01
    Version         : 1.0
    CVEs            : CVE-2021-26411, CVE-2020-0674
    Plugin IDs      : N/A
    STIG-ID         : 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\WN11-CC-000391.ps1
#>

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main"
if (!(Test-Path $Path)) { New-Item -Path $Path -Force | Out-Null }
New-ItemProperty -Path $Path -Name "DisableIE" -Value 1 -PropertyType DWord -Force
