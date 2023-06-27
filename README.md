# DarkTweeks

Powershell Utility to create automated task and tweeks system at windows operating system

I've been working on this utility to automate the Hardening and configuration of the Windows operating system at the OS level. these are the personal tweeks and settings opted from the standered prcedures for the best performace and lower clutter.

Includes:

- Installation of the Software applications.

- Confiration changes and tweeks at the OS level.

## Testing

we made the script to run in the development for the optimal impact of the servers.

feel free to try the testing sctipt from the below
[TweeksScript.ps1](TweeksScript.ps1)

If you are encountered with the error follow below instrucations.

**Error**: C:\temp\TweeksScript.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies

**Solution:**

1. Open PowerShell Console by selecting “Run as Administrator” (Or Right-click the Start menu and choose “Windows PowerShell (Admin)” from the context menu) and get the execution Policy with the command: Get-ExecutionPolicy to get the current policy applied, such as “Restricted”.

2. Set the execution Policy with the following command:

   ```
   Set-ExecutionPolicy RemoteSigned
   ```

3. Type “Y” when prompted to proceed.

Docs : https://go.microsoft.com/fwlink/?LinkID=135170

# Future - Features

Please note the project was kept **HALT**

**Testing**

Made changes to the script untill addition of the pages to the utility.

![Testing Image](/DarkTweeks_Testing.png)

**Reference**

Future Layout desing & other additions.

![DesingLayout](/DarkTweeks_finalIdea.jpg)

### Bonus

While working on the hardening of the sevrers cae accross the basic clean up tweks and addtional commands.

Please find them in the text File : [SystemManintenace.txt](/SystemManintenace.txt)
