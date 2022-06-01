func selectionSort (_ arr: inout [Int]) {
  
    for i in 0..<arr.count - 1 {
    
        var min_idx = i;
        
        // find the smallest element in the sub-array
        for j in i + 1..<arr.count {
            if (arr[j] < arr[min_idx]) {
                min_idx = j
            }
        }
        
        // replace current element with the smallest element found
        let temp = arr[min_idx]
        arr[min_idx] = arr[i]
        arr[i] = temp
        
    }
}

var unsorted = [9, 7, 5, 3, 1]
selectionSort(&unsorted)
print(unsorted)