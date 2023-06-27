Add-Type -AssemblyName System.Windows.Forms


$Form = New-Object System.Windows.Forms.Form
$Form.MinimumSize = '400,400'
$Form.MaximizeBox = $false
$Form.CancelButton = $ExitButton
$Form.AutoScale = $true
$Form.BackColor = "#272b33"
$Form.ForeColor = "#FFFFFF"
$Form.AutoScaleMode = "Font"
#
$MainTab = New-Object System.Windows.Forms.TabControl
$MainTab.Size = '1280,720'
$MainTab.BackColor = "#272b33"
$MainTab.ForeColor = "#FFFFFF"
#$MainTab.Location = '15,95'
$MainTab.Multiline = $True
$MainTab.Name = 'TabPage'
$MainTab.SelectedIndex = 0
#$MainTab.Anchor = 'Top,Left,Bottom,Right'
#
$TabPage1 = New-Object System.Windows.Forms.TabPage
$TabPage1.Name = 'TabPage1'
$TabPage1.BackColor = "#272b33"
$TabPage1.ForeColor = "#FFFFFF"
$TabPage1.Padding = '5,5,5,5'
$TabPage1.TabIndex = 1
$TabPage1.Text = 'Tab - 1'
$TabPage1.UseVisualStyleBackColor = $False
$TabPage1.Enabled = $false


# TabPage 2

$TabPage2 = New-Object System.Windows.Forms.TabPage
$TabPage2.Name = 'TabPage2'
$TabPage2.BackColor = "#272b33"
$TabPage2.ForeColor = "#FFFFFF"
$TabPage2.Padding = '5,5,5,5'
$TabPage2.TabIndex = 2
$TabPage2.Text = 'Tab - 2'
$TabPage2.UseVisualStyleBackColor = $False
$TabPage2.Enabled = $false


#
$MainTab.Controls.AddRange(@($TabPage1,$TabPage2))
$Form.Controls.AddRange(@($MainTab))
#End
# Show Form
$Form.ShowDialog() | Out-Null
$Form.Dispose()