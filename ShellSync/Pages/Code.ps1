	Add-PodeWebPage -Name 'code' -Icon 'Settings' -ScriptBlock {
		
		$name, $model, $manufacturer = cInfo	
		
		New-PodeWebContainer -NoBackground -Content @(
			New-PodeWebGrid -Cells @(
				New-PodeWebCell -Content @(
					New-PodeWebTextbox -Name 'PC Name' -Value ($name) 
				)
				New-PodeWebCell -Content @(
					New-PodeWebTextbox -Name 'Model' -Value ($model) 
				)
				New-PodeWebCell -Content @(
					New-PodeWebTextbox -Name 'Manufacturer' -Value ($manufacturer) 
				)
			)
	)

		New-PodeWebCard -Content @(
			New-PodeWebTable -Name 'Services' -ScriptBlock {

					[ordered]@{
						Name     = "Jakoby"
						car      = "370"	
						snack    = "cookie"
						animal   = "cat"							
					}
			}
		)	
	
	
	}