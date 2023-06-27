Add-Type -AssemblyName System.Windows.Forms
#
$form = New-Object System.Windows.Forms.Form
$form.MinimumSize = '400,400'
#$form.StartPosition = 'CenterScreen'
$form.MaximizeBox = $false
$form.CancelButton = $ExitButton
#Autoscaling settings
$form.AutoScale = $true
$form.AutoScaleMode = "Font"
#$ASsize = New-Object System.Drawing.SizeF(7,15)
#$form.AutoScaleDimensions = $ASsize
#
#
$MainTab = New-Object System.Windows.Forms.TabControl
$MainTab.Size = '540,465'
#$MainTab.Location = '15,95'
$MainTab.Multiline = $True
$MainTab.Name = 'TabPage'
$MainTab.SelectedIndex = 0
$MainTab.Anchor = 'Top,Left,Bottom,Right'
#
$TabPage1 = New-Object System.Windows.Forms.TabPage
$Tabpage1.Name = 'TabPage1'
$Tabpage1.Padding = '5,5,5,5'
$Tabpage1.TabIndex = 1
$Tabpage1.Text = 'Host SSH'
$Tabpage1.UseVisualStyleBackColor = $True
$TabPage1.Enabled = $false
<#
$ESXhostList = New-Object System.Windows.Forms.ListView
$ESXhostList.View = [System.Windows.Forms.View]::Details
$ESXhostList.Location = '10,15'
$ESXhostList.Size = '510,150'
$ESXhostList.Columns.Add('Host Name',420) | Out-Null
$ESXhostList.Columns.Add('SSH Status',80) | Out-Null
$ESXhostList.Anchor = 'Top,Left,Right'
#
$ConnectBtn = New-Object System.Windows.Forms.Button
$ConnectBtn.Location = '20,190'
$ConnectBtn.Size = '54,24'
$ConnectBtn.Text = 'Connect'
$ConnectBtn.BackgroundImageLayout = 'Center'
$ConnectBtn.Enabled = $true
$ConnectBtn.Anchor = 'Left,Bottom'
#
$TabPage1.Controls.AddRange(@($ESXhostList,$ConnectBtn))
################################################################################
# TabPage 2
################################################################################>
$TabPage2 = New-Object System.Windows.Forms.TabPage
$Tabpage2.Name = 'TabPage2'
$Tabpage2.Padding = '5,5,5,5'
$Tabpage2.TabIndex = 2
$Tabpage2.Text = 'Datastores'
$Tabpage2.UseVisualStyleBackColor = $True
$TabPage2.Enabled = $false
<#
$DSList = New-Object System.Windows.Forms.ListView
$DSList.View = [System.Windows.Forms.View]::Details
$DSList.Location ='10,15'
$DSList.Size = '510,150'
$DSList.Columns.Add('Name',160) | Out-Null
$DSList.Columns.Add('FreeGB',65) | Out-Null
#
$ConnectBtn2 = New-Object System.Windows.Forms.Button
$ConnectBtn2.Location = '20,190'
$ConnectBtn2.Size = '54,24'
$ConnectBtn2.Text = 'Connect'
$ConnectBtn2.BackgroundImageLayout = 'Center'
$ConnectBtn2.Enabled = $true
#
$TabPage2.Controls.AddRange(@($DSList,$ConnectBtn2))
#
#>
$MainTab.Controls.AddRange(@($TabPage1,$TabPage2))
<#
# Info/Logging Window
$ProgressLog = New-Object System.Windows.Forms.TextBox
$ProgressLog.Location = '15,570'
$ProgressLog.Size = '540,80'
$ProgressLog.Multiline = $true
$ProgressLog.Anchor = 'Left,Bottom,Right'
$ProgressLog.TabStop = $false
$ProgressLog.ScrollBars = "Vertical"
$ProgressLog.ReadOnly = $true
#
# Add all the Form controls
$form.Controls.AddRange(@($MainTab,$ProgressLog))
#>
$form.Controls.AddRange(@($MainTab))
#End
# Show form
$form.ShowDialog() | Out-Null
$form.Dispose()