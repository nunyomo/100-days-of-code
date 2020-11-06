$Timeout = 60
$timer = [Diagnostics.Stopwatch]::StartNew()
while (($timer.Elapsed.TotalSeconds -lt $Timeout) -and (-not (Test-Path -Path  -PathType Leaf)) {
    Start-Sleep -Seconds 1
    Write-Verbose -Message "Still waiting for action to complete after [$totalSecs] seconds..."
}
$timer.Stop()

$stopwatch =  [system.diagnostics.stopwatch]::StartNew()
#Below is an example of checking the total seconds the stopwatch has been running and then executing some code. To prevent from attempting to execute the code every microsecond or less I've added a sleep cmdlet in there so that it will only check every second.
#This example ensures that the code inside of the while loop does not execute for longer than ten seconds.
while ($timer.Elapsed.TotalSeconds -lt 10) {

    ## Do some stuff here
  
    
  
    ## Wait a specific interval
  
    Start-Sleep -Seconds 1
  
    
  
    ## Check the time
  
    $totalSecs =  [math]::Round($timer.Elapsed.TotalSeconds,0)
  
    Write-Verbose -Message "Still waiting for action  to complete after [$totalSecs] seconds..."
  
  }
#--------------------------------------------------
#adding progress bars
#Get-Help Write-Progress -Online

#Display the progress of a For loop
for ($i = 1; $i -le 100; $i++ )
{
    Write-Progress -Activity "Search in Progress" -Status "$i% Complete:" -PercentComplete $i;
}
#
while ($true) { write-progress  -Activity 'Doing thing'; sleep 1 }

#display the progress for a nested for loop
for($I = 1; $I -lt 101; $I++ )
{
    Write-Progress -Activity Updating -Status 'Progress->' -PercentComplete $I -CurrentOperation OuterLoop
    for($j = 1; $j -lt 101; $j++ )
    {
        Write-Progress -Id 1 -Activity Updating -Status 'Progress' -PercentComplete $j -CurrentOperation InnerLoop
    }
}

Updating
Progress ->
 [ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]
OuterLoop
Updating
Progress
 [oooooooooooooooooo                                                   ]
InnerLoop

#adding a percent complete indicator
$totalTimes = 10

  $i = 0

  for ($i=0;$i -lt $totalTimes; $i++) {

  $percentComplete = ($i / $totalTimes) * 100

  Write-Progress -Activity 'Doing thing' -Status "Did thing $i  times" -PercentComplete $percentComplete

  sleep 1

}