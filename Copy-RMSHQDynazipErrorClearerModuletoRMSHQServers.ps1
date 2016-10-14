    $Computers = "RMSHQ01", "RMSHQ02", "RMSHQ03", "RMSHQ04", "RMSHQ05"
    $Item = "C:\Users\alozano\OneDrive - tervis.com\Documents\WindowsPowerShell\Modules\RMSHQDynazipErrorClearer"
    foreach ($Computer in $Computers) {
        $Destination = "\\"+$Computer+"\c$\Users\Administrator\Documents\WindowsPowerShell\Modules\"
        Copy-Item -Path $Item -Destination $Destination -Force -Recurse -Verbose
        }
