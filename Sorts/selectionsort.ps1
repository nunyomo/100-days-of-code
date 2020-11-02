# Selection Sort is an ameliorated version of Bubble Sort because of the performance. 
# Even if they have the same worst-case performance, Selection Sort performs fewer swaps.
# Selection sort works in one of two ways: 
# It either looks for the smallest item in the list and places it in the front of the list
# (ensuring that the item is in its correct location) or 
# looks for the largest item and places it in the back of the list.
# Selection Sort has the same complexities as Bubble Sort.
# Selection Sort is used when:
# Sorting small arrays
# checking off all the elements is compulsory
# Less swapping is required

Function SelectionSort( [Array] $theArray )
{
	$datal = $theArray.length-1
	0..( $datal - 1 ) | ForEach-Object {
		$min = $theArray[ $_ ]
		$mini = $_
		( $_ + 1 )..$datal | ForEach-Object {
			if( $theArray[ $_ ] -lt $min ) {
				$min = $theArray[ $_ ]
				$mini = $_
			}
		}
		$temp = $theArray[ $_ ]
		$theArray[ $_ ] = $min
		$theArray[ $mini ] = $temp
	}
	$theArray
}

#$l = 100; SelectionSort( ( 1..$l | ForEach-Object { $Rand = New-Object Random }{ $Rand.Next( 0, $l - 1 ) } ) )