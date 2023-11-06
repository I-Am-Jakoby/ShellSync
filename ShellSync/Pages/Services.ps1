    Add-PodeWebPage -Name 'Services' -Icon 'usb-flash-drive' -ScriptBlock {
        New-PodeWebContainer -Content @(
            New-PodeWebTable -Name 'Services' -DataColumn "Name" -SimpleFilter -ScriptBlock {
                foreach ($svc in (Get-Service)) {
                    [ordered]@{
                        Name      = $svc.Name
                        Status    = "$($svc.Status)"
                        StartType = "$($svc.StartType)"
                        Actions   = @(
                            New-PodeWebButton -Name 'Stop' -Icon 'Stop-Circle' -IconOnly -ScriptBlock {
                                Stop-Service -Name ($WebEvent.Data.Value) -Force | Out-Null
                                Show-PodeWebToast -Message "$($WebEvent.Data.Value) stopped"
                                Sync-PodeWebTable -Id $ElementData.Parent.ID
                            }
                            New-PodeWebButton -Name 'Start' -Icon 'Play-Circle' -IconOnly -ScriptBlock {
                                Start-Service -Name ($WebEvent.Data.Value) #| Out-Null
                                Show-PodeWebToast -Message "$($WebEvent.Data.Value) started"
                                Sync-PodeWebTable -Id $ElementData.Parent.ID
                            }
                        )
                    }
                }
            }
        )
    }