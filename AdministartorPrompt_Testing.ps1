#---------------------------------------------------------[Initialisations]--------------------------------------------------------
# Init PowerShell Gui
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


#---------------------------------------------------------[Form]--------------------------------------------------------
[System.Windows.Forms.Application]::EnableVisualStyles()

#---------------------------------------------------------[Administration]--------------------------------------------------------
$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error

$Ask = 'Do you want to run this as an Administrator?
        Select "Yes" to Run as an Administrator
        Select "No" to not run this as an 
        Select "Cancel" to stop the script.'

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    $Prompt = [System.Windows.MessageBox]::Show($Ask, "Run as an Administrator or not?", $Button, $ErrorIco) 
    Switch ($Prompt) {
        #This will debloat Windows 10
        Yes {
            Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
            Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
            Exit
        }
        No {
            Break
        }
    }
}
# Create a new form
$Form                    = New-Object system.Windows.Forms.Form
$Form.ClientSize         = '1280,700'
$Form.text               = "leela_sai_prasanth :> PowerShell GUI-Tweeks"
$Form.BackColor          = "#272b33"
$Form.ForeColor          = "#FFFFFF"



# Display the form
#---------------------------------------------------------[End Form]--------------------------------------------------------
[void]$Form.ShowDialog()