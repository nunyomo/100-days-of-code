# The worst and average-case complexity of the Bubble Sort is О(n2), 
# meaning that the data is in the opposite order we want to sort, or the elements are arbitrarily distributed in the list.
# The best-case complexity is O(n). That's the case where the data is already sorted.
# Bubble sort is used when :
# simple code is preferred;
# the complexity doesn't matter.

param ( $theArray = @() ) 

# False when swaps occur 
[bool] $sorted = $false 
$counter = 0 
for ($pass = 1; ($pass -lt $theArray.Count) -and -not $sorted; $pass++) 
{ 
    # Assume the array is sorted 
    $sorted = $true 
    for ($index = 0; $index -lt ($theArray.Count - $pass); $index++) 
    { 
        $counter++ 
        $nextIndex = $index + 1 
        if ($theArray[$index].CompareTo($theArray[$nextIndex]) -gt 0) 
        { 
            # Swap items 
            $temp = $theArray[$index] 
            $theArray[$index] = $theArray[$nextIndex] 
            $theArray[$nextIndex] = $temp 
            $sorted = $false 
        } 
    } 
} 
 
Write-Host "Array items: `t" $theArray.Count 
Write-Host "Iterations: `t" $counter