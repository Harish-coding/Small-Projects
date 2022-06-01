/* Note: All parameters passed into a Swift function are constants, so you can't
change them.
*/

/*
 If you want a function to modify a parameter’s value, and you want those 
 changes to persist after the function call has ended, define that parameter 
 as an in-out parameter instead.
*/

func bubbleSort (_ array: inout [Int]) {
 
    for i in 0..<array.count - 1 {
        for j in 0..<array.count - 1 - i {
            if (array[j] > array[j + 1]) {
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
    
}

var unsorted = [9, 7, 5, 3, 1]
bubbleSort(&unsorted)
print(unsorted)