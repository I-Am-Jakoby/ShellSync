$headers=@{}
$headers.Add("X-RapidAPI-Key", "85a64d925bmsh374c814867fca19p1c3880jsn5cff8c77bdb3")
$headers.Add("X-RapidAPI-Host", "privatix-temp-mail-v1.p.rapidapi.com")
$response = Invoke-RestMethod -Uri 'https://privatix-temp-mail-v1.p.rapidapi.com/request/one_mail/id/$hashkey/' -Method GET -Headers $headers