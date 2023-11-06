    Add-PodeWebPage -Name 'Processes' -ScriptBlock {
        New-PodeWebContainer -Content @(
			New-PodeWebText -Value get-location		
            New-PodeWebChart -Name 'Top Processes' -Type Bar -AutoRefresh -ScriptBlock {
                Get-Process |
                Sort-Object -Property CPU -Descending |
                Select-Object -First 10 |
                ConvertTo-PodeWebChartData -LabelProperty ProcessName -DatasetProperty CPU, Handles
            }
        )
    }