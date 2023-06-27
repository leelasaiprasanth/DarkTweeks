<#
.NOTES
   Author      : leela_sai_prasanth
   GitHub      : https://github.com/leelasaiprasanth
   Version 1.0
#>

#---------------------------------------------------------[Initialisations]--------------------------------------------------------
# Init PowerShell Gui
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


#---------------------------------------------------------[Form]--------------------------------------------------------
[System.Windows.Forms.Application]::EnableVisualStyles()



# Create a new form
$Form                    = New-Object system.Windows.Forms.Form
$Form.ClientSize         = '1280,720'
$Form.MaximumSize        = '1280,720'
$Form.Text               = "Dark Tweeks ᓚᘏᗢ "
$Form.BackColor          = "#272b33"
$Form.ForeColor          = "#FFFFFF"
$Form.MaximizeBox        = $False

$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.Height                   = 74
$Panel1.Width                    = 1280
$Panel1.location                 = New-Object System.Drawing.Point(1,1)
#$Panel1.BackColor = "Red"

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.Text                     = "Dark Tweeks  (⊙_◎)"
$Label1.AutoSize                 = $True
$Label1.Width                    = 140
$Label1.Height                   = 90
$Label1.Anchor                   = "Top,Left"
$Form.ForeColor                  = "#FFFFFF"
$Label1.location                 = New-Object System.Drawing.Point(6,6)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',24)
#$Label1.BackColor = "white"


$Label2                   = New-Object System.Windows.Forms.Label
$Label2.AutoSize          = $True
$Label2.Text              = " Hidden Text"
$Label2.Width             = 150
$Label2.Height            = 10
$Label2.Location          = New-Object System.Drawing.Point(170,35)
$Label2.Font              = New-Object System.Drawing.Font('Microsoft San Serif',7)
$Label2.BackColor = "Pink"

<#
$Logo                     = New-Object system.Windows.Forms.PictureBox
$Logo.Width               = 325
$Logo.Height              = 75
$Logo.location            = New-Object System.Drawing.Point(950,-11)
$Logo.imageLocation       = "https://raw.githubusercontent.com/leelasaiprasanth/DarkTweeks/main/Bleev_logo.png"
$Logo.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom
#$Logo.BackColor = "Pink"

#>

$MainTab = New-Object System.Windows.Forms.TabControl
$MainTab.Multiline = $True
$MainTab.Size      = '1260,600'
$MainTab.Name = 'Tabs'
$MainTab.SelectedIndex = 0
$MainTab.Location = New-Object System.Drawing.Point(1,74)
#$MainTab.BackColor = "Green"


#
$Page1 = New-Object System.Windows.Forms.TabPage
$Page1.Name = 'Page1'
$Page1.BackColor = "#272b33"
$Page1.ForeColor = "#FFFFFF"
$Page1.TabIndex = 1
$Page1.Text = 'WIN10POW'
$Page1.UseVisualStyleBackColor = $False
$Page1.Enabled = $false
#


$Panel2                          = New-Object system.Windows.Forms.Panel
$Panel2.Height                   = 670
$Panel2.Width                    = 670
$Panel2.location                 = New-Object System.Drawing.Point(1,1)
$Panel2.BackColor = "Red"

$Button                    = New-Object system.Windows.Forms.Button
$Button.text               = "Install Button"
$Button.width              = 200
$Button.height             = 115
$Button.location           = New-Object System.Drawing.Point(16,19)
$Button.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',16)
$Button.Add_Click($Button_Click)
$button_click = {write-host "hi"}

$Panel2.Controls.AddRange(@($Button))
$Page1.Controls.AddRange(@($Panel2))

# TabPage 2

$Page2 = New-Object System.Windows.Forms.TabPage
$Page2.Name = 'Page2'
$Page2.BackColor = "#272b33"
$Page2.ForeColor = "#FFFFFF"
$Page2.TabIndex = 2
$Page2.Text = 'Testing'
$Page2.UseVisualStyleBackColor = $False
$Page2.Enabled = $false


$MainTab.Controls.AddRange(@($Page1, $Page2))
$Panel1.Controls.AddRange(@($Label1, $Label2, $Logo))
$Form.Controls.AddRange(@($Panel1, $MainTab))
# Display the form

#---------------------------------------------------------[Button Functions]--------------------------------------------------------


#---------------------------------------------------------[End Form]--------------------------------------------------------

[void]$Form.ShowDialog()
#$Form.Dispose()
