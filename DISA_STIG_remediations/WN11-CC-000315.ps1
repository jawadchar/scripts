<#
.SYNOPSIS
Disable AlwaysInstallElevated.
Local privilege escalation via MSI.

.NOTES
    Author          : Jawad Charafeddine
    LinkedIn        : linkedin.com/in/jawadchar/
    GitHub          : github.com/jawadchar
    Date Created    : 2026-03-01
    Last Modified   : 2026-03-01
    Version         : 1.0
    CVEs            : Common LPE technique, used in: MSI abuse, Post-exploitation privilege escalation chains
    Plugin IDs      : N/A
    STIG-ID         : 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    
    PS C:\> .\WN11-CC-000315.ps1
#>

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer"
if (!(Test-Path $Path)) { New-Item -Path $Path -Force | Out-Null }
New-ItemProperty -Path $Path -Name "AlwaysInstallElevated" -Value 0 -PropertyType DWord -Force
