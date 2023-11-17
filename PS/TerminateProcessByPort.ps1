<#
.SYNOPSIS
    Terminates a process using a specified port number.
.DESCRIPTION
    This script terminates a process associated with a specified port number.
    It uses the Get-NetTCPConnection cmdlet to find the process ID (PID) 
    using the given port number. If a process is found, it forcibly terminates it.
    If no process is found, it displays a message indicating that no process was found.
.PARAMETER portNumber
    Specifies the port number to find and terminate the associated process.
    Must be an integer value representing the port number.
.EXAMPLE
    .\TerminateProcessByPort.ps1 -portNumber 80
    Terminates the process using port 80.
#>

param (
    [int]$portNumber
)

$process = Get-NetTCPConnection -LocalPort $portNumber -ErrorAction SilentlyContinue | 
Select-Object -ExpandProperty OwningProcess -First 1

if ($process) {
    Stop-Process -Id $process -Force
    Write-Output "Process with ID $process using port $portNumber has been terminated."
}
else {
    Write-Output "No process found using port $portNumber."
}
