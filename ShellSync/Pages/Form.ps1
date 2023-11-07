    Add-PodeWebPage -Name 'Form' -ScriptBlock {
        New-PodeWebCard -Content @(
			New-PodeWebText -Value get-location		
            New-PodeWebForm -Name 'Example' -ScriptBlock {
                $WebEvent.Data | Out-Default
            } -Content @(

				New-PodeWebBadge -Value 'successfully' -Colour Green
				

				
                New-PodeWebTextbox -Name 'Name' -AutoComplete {
                    return @('billy', 'bobby', 'alice', 'john', 'sarah', 'matt', 'zack', 'henry')
                }
                New-PodeWebTextbox -Name 'Password' -Type Password -PrependIcon Lock
                New-PodeWebTextbox -Name 'Date' -Type Date
                New-PodeWebTextbox -Name 'Time' -Type Time
                New-PodeWebDateTime -Name 'DateTime' -NoLabels
                New-PodeWebCredential -Name 'Credentials' -NoLabels
                New-PodeWebCheckbox -Name 'Checkboxes' -Options @('Terms', 'Privacy') -AsSwitch
                New-PodeWebRadio -Name 'Radios' -Options @('S', 'M', 'L')
                New-PodeWebSelect -Name 'Role' -Options @('User', 'Admin', 'Operations') -Multiple
                New-PodeWebRange -Name 'Cores' -Value 30 -ShowValue
				New-PodeWebSelect -Name 'Role' -Options @('Choose...', 'User', 'Admin', 'Operations') |
					Register-PodeWebEvent -Type Focus -ScriptBlock {
						Show-PodeWebToast -Message "The value was changed: $($WebEvent.Data['Role'])"
						
					}
            )
        )
    }