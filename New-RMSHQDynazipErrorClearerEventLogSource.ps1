    $EventSource = "RMSHQDynazipErrorClearer"
    $EventLog = "Application"
    if ([System.Diagnostics.EventLog]::SourceExists($EventSource) -eq $false) {
        [System.Diagnostics.EventLog]::CreateEventSource($EventSource, $EventLog)
    }