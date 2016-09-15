function Install-RMSHQDynazipErrorClearer{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $Computer
    )

    $repository = https://github.com/Tervis-Tumbler/RMSHQDynazipErrorClearer.git
    $directory = ($ENV:PSModulepath -split ";")[0]

    choco install git
    
    git clone $repository $directory

}