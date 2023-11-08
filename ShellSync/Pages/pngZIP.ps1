    Add-PodeWebPage -Name "Password management" -NoTitle -ScriptBlock {

        New-PodeWebContainer -Content @(
            New-PodeWebForm -Name "passwordform" -SubmitText "Generate" -ShowReset -ResetText "Reset"  -Content @(


                New-PodeWebTextbox -Name "secret" -DisplayName "Input"
                New-PodeWebTextbox -Name "Output" -ReadOnly

            ) -ScriptBlock {

                $WebEvent.Data | Out-Default

                $s = $WebEvent.Data.secret
				$b = "She is a $s"
                    Update-PodeWebTextBox -Value "$b" -Name "Password Link"

            }
        )
    }

