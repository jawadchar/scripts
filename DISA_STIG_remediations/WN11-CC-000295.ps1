<#
.SYNOPSIS
Prevent RSS enclosure downloads
Stops malicious attachment downloads via IE RSS feeds.
Mitigates legacy IE abuse vectors.

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
    PS C:\> .\WN11-CC-000295.ps1
#>

$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Feeds"
if (!(Test-Path $Path)) { New-Item -Path $Path -Force | Out-Null }
New-ItemProperty -Path $Path -Name "DisableEnclosureDownload" -Value 1 -PropertyType DWord -Force
