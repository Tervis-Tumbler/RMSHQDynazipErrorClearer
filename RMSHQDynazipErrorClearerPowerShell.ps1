function Install-RMSHQDynazipErrorClearer{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $Computer
    )

    #$env:USERPROFILE  

    $RMSHQDynazipErrorClearerRepoURL = https://github.com/Tervis-Tumbler/RMSHQDynazipErrorClearer.git

    choco install git
    
    git clone $RMSHQDynazipErrorClearerRepoURL

    #($ENV:PSModulepath -split ";")[0]
}