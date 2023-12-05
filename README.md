# MyCodeSnippets

These are my various scripts which I made for myself.

## PS (PowerShell)

### TerminateByPort.ps1

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
---
## Java
### Checkstyle Configuration (checkstyle.xml)
###### An Intellij CheckStyle plugin config file

The checkstyle.xml file contains configurations and rules used by Checkstyle, a static analysis tool for checking code against coding standards. It includes rules inspired by various sources such as the Java Language Specification, Sun Code Conventions, Javadoc guidelines, JDK API documentation, and best practices.

**File Structure & Formatting**
  - Ensures files end with a new line.
  - Checks for consistent keys in property files.
  - Identifies and enforces file length.
  - Manages whitespace, tabs, and line lengths.
  - Verifies absence of trailing spaces.

**Naming Conventions**
  - Enforces consistent naming for variables, methods, packages, etc.

**Imports & Modifiers**
  - Manages import statements and modifier order.

**Code Blocks & Style**
  - Enforces proper use of braces, avoids nested blocks, and manages empty blocks.
  - Addresses common coding issues like empty statements, magic numbers, and unnecessary instantiations.

**Class Design & Miscellaneous Checks**
  - Focuses on class design, array type style, TODO comments, and other miscellaneous checks.
---
### PMD Ruleset (pmd-rules.xml)
###### An Intellij PMD plugin config file

The pmd-rules.xml file contains rule-sets used by PMD, another static code analysis tool, to identify and report on potential issues in Java code.

**Java Code Style**
  - Refines code style conventions by excluding certain rules regarding variable lengths, method arguments, constructors, etc.
  - Enforces specific patterns for class naming and abstract/utility classes.

**Best Practices**
  - Focuses on best practices for JUnit, assertions, varargs, exception handling, and array handling.

**Design & Complexity**
  - Addresses design principles and complexity metrics such as cyclomatic and cognitive complexities.
  - Identifies issues related to class immutability, exception handling, method count, and more.
 
