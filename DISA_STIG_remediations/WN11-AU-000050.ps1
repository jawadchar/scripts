<#
.SYNOPSIS
Enable Process Creation auditing

Provides Event ID 4688 logging for threat detection.

Enables detection of:
Credential dumping
LOLBins
Malware execution chains

.NOTES
    Author          : Jawad Charafeddine
    LinkedIn        : linkedin.com/in/jawadchar/
    GitHub          : github.com/jawadchar
    Date Created    : 2026-03-01
    Last Modified   : 2026-03-01
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000050

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    
    Example syntax:
    PS C:\> .\WN11-AU-000050.ps1
    Verify:
    auditpol /get /subcategory:"Process Creation"
#>

auditpol /set /subcategory:"Process Creation" /success:enable
auditpol /set /option:SCENoApplyLegacyAuditPolicy /value:enable
