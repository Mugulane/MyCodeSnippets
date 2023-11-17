# MyCodeSnippets
These are my various scrpits which I made for myself.

PS (PowerShell)
- **TerminateByPort.ps1** <br>
This script terminates a process associated with a specified port number. It uses the Get-NetTCPConnection cmdlet to find the process ID (PID) using the given port number. If a process is found, it forcibly terminates it. If no process is found, it displays a message indicating that no process was found.
