<#
.SYNOPSIS
Disable Microsoft Consumer Experiences.
Risk - Unauthorized app installs & telemetry exposure.

.NOTES
    Author          : Jawad Charafeddine
    LinkedIn        : linkedin.com/in/jawadchar/
    GitHub          : github.com/jawadchar
    Date Created    : 2026-03-01
    Last Modified   : 2026-03-01
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE

    Example syntax:
    PS C:\> .\WN11-CC-000197.ps1
#>

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
if (!(Test-Path $Path)) { New-Item -Path $Path -Force | Out-Null }
New-ItemProperty -Path $Path -Name "DisableWindowsConsumerFeatures" -Value 1 -PropertyType DWord -Force
