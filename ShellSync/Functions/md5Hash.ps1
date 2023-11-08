function Get-MD5Hash {
    param (
        [Parameter(Mandatory=$true)]
        [string] $InputString
    )

    $md5 = [System.Security.Cryptography.MD5]::Create()
    $byteArray = [System.Text.Encoding]::UTF8.GetBytes($InputString)
    $hashByteArray = $md5.ComputeHash($byteArray)
    $hashString = [BitConverter]::ToString($hashByteArray) -replace '-'
    $md5.Dispose()

    return $hashString.ToLower()
}