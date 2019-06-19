Param(
    # The EC2 key pair assigned to all instances launched.
    [Parameter(mandatory=$true)]
    [string]
    $ec2KeyPair,

    # The instance type for the stage you want
    [Parameter()]
    [string]
    $appInstanceType = "t2.small"   
)


function ProcessInput([string]$appInstanceType,[string]$keyPair)
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


ProcessInput $appInstanceType $ec2KeyPair