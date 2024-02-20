<#
.SYNOPSIS
    Sets a new password for a local user account using PowerShell.
.DESCRIPTION
    This script prompts the user to enter a new password and username securely.
    It then uses the Set-LocalUser cmdlet to set the password for the specified local user.
.PARAMETER Password
    Specifies the new password for the local user account.
.PARAMETER Username
    Specifies the username for which the password needs to be set.
.EXAMPLE
    .\Set-LocalUserPassword.ps1
    Prompts the user to enter a new password and username and sets the password for the specified local user.
#>

# Prompt user for a new password securely
$Password = Read-Host "Enter a new password" –AsSecureString

# Prompt user for a username
$Username = Read-Host "Enter the username" –AsSecureString

# Set the password for the specified local user
Set-LocalUser -Name $Username -Password $Password
