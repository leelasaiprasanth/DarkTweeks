$button_click = {write-host "hi"}
$form = New-Object System.Windows.Forms.Form\
$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(35,35)
$Button.Size = New-Object System.Drawing.Size(120,23)
$Button.Text = "Show Dialog Box"
$Button.Add_Click($Button_Click)

$Form.Controls.Add($Button)


 $form.showdialog()