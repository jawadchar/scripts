<#
.SYNOPSIS
Rename built-in Guest account.
Prevents abuse of well-known SID S-1-5-21-*-501.

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
    PS C:\> .\WN11-SO-000025.ps1
#>

Rename-LocalUser -Name "Guest" -NewName "GuestDisabled01"
