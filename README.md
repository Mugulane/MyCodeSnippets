# MyCodeSnippets
These are my various scrpits which I made for myself.

PS (PowerShell)
- **TerminateByPort.ps1** <br>
This script terminates a process associated with a specified port number. It uses the Get-NetTCPConnection cmdlet to find the process ID (PID) using the given port number. If a process is found, it forcibly terminates it. If no process is found, it displays a message indicating that no process was found.

Open PowerShell:
Press Win + X on your keyboard.
Choose "Windows PowerShell" or "PowerShell" from the menu that appears (depending on your Windows version).

Navigate to the Directory Containing the Script:
Use the cd command (Change Directory) to navigate to the folder where TerminateProcessByPort.ps1 is located. For example:
```cmdline
cd C:\Path\To\Script\Directory
```
To execute the script by typing its filename along with any necessary parameters. 
```cmdline
.\TerminateProcessByPort.ps1 8080
```
Make sure that you are in 
