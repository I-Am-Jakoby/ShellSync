# --------------------------------------------------------------------------------------
	Enable-PodeSessionMiddleware -Duration 120 -Extend

	New-PodeAuthScheme -Form | Add-PodeAuth -Name Example -ScriptBlock {
		param($username, $password)

		# Mock user data store
		$users = @{
			'Jakoby' = @{
				ID = 'Jako302'
				Name = 'Jakoby'
				Type = 'Human'
				Password = 'password' # Replace with actual password
			}
			'Redd' = @{
				ID = 'Redd004'
				Name = 'Redd'
				Type = 'Human'
				Password = 'password'  # Replace with actual password
			}
		}

		# Check if user exists and if password matches
		$user = $users[$username]
		if ($user -and $user.Password -eq $password) {
			# Return the user details without the password
			return @{
				User = @{
					ID = $user.ID
					Name = $user.Name
					Type = $user.Type
				}
			}
		}

		# Return nothing if the authentication fails
		return $null
	}

	Set-PodeWebLoginPage -Authentication Example