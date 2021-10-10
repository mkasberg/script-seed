#!/usr/bin/env pwsh

# This is a Powershell script seed.
# Use it as a template for your own Powershell script.

param (
    [switch]$help = $false,
    [string]$name = "world"
)

if ($help) {
    Write-Host "Usage: powershell_seed.ps1 [options]
Prints a message as an example of parsing CLI args in Powershell.

Options:
  -h       Prints this help message.
  -n NAME  Specify the user's name.";

    exit;
}

#  Your code goes here.
Write-Host "Hello $($name)!"
Write-Host ""
Write-Host "You ran the Powershell seed script!"
