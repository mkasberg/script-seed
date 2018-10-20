#!/usr/bin/env pwsh

# Powershell script seed.
# Use this to get started quickly, and customize it to your needs.

param (
    [switch]$help = $false,
    [string]$type = "tomato"
)

if ($help) {
    Write-Host 'Usage: powershell_seed.ps1 [options]
This is a PowerShell script seed. Customize it to get started quickly with PowerShell.

Options:
    -h  Prints this help message.
    -t  Specify the type of seed.';

    exit;
}

#  Your code goes here.
Write-Host 'You planted a $($type) seed.'
