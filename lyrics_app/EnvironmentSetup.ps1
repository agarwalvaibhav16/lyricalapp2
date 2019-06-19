
function ProcessInput()
{
    if ((Get-AWSCredentials) -eq $null)
    {
        throw "You must set credentials via Set-AWSCredentials before running this cmdlet."
    }
    if ((Get-DefaultAWSRegion) -eq $null)
    {
        throw "You must set a region via Set-DefaultAWSRegion before running this cmdlet."
    }
    
}


ProcessInput
