
func insertionSort (_ arr: inout [Int]) {
 
    for i in 1..<arr.count {
    
        let key = arr[i]
        var j = i - 1
        
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j]
            j -= 1
        }
        
        arr[j + 1] = key
    }
}

var unsorted = [9, 7, 5, 3, 1]
insertionSort(&unsorted)
print(unsorted)