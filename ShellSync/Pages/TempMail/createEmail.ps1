Import-Module "C:\Users\micha\Desktop\ShellSync\Functions\md5Hash.ps1"

$headers=@{}
$headers.Add("X-RapidAPI-Key", "85a64d925bmsh374c814867fca19p1c3880jsn5cff8c77bdb3")
$headers.Add("X-RapidAPI-Host", "privatix-temp-mail-v1.p.rapidapi.com")
$response = Invoke-RestMethod -Uri 'https://privatix-temp-mail-v1.p.rapidapi.com/request/domains/' -Method GET -Headers $headers

$email = $env:username + $response[0]

$hashKey = "2ef90b252f7ffebe29abfba0f10da916"

echo $email 
echo $hashkey