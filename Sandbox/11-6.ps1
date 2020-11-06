$Timeout = 60
$timer = [Diagnostics.Stopwatch]::StartNew()
while (($timer.Elapsed.TotalSeconds -lt $Timeout) -and (-not (Test-Path -Path  -PathType Leaf)) {
    Start-Sleep -Seconds 1
    Write-Verbose -Message "Still waiting for action to complete after [$totalSecs] seconds..."
}
$timer.Stop()
