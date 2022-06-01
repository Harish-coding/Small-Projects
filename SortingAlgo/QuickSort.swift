
func sort(_ arr: inout [Int]) {
    quickSort(&arr, leftIdx: 0, rightIdx: arr.count - 1)
}


func quickSort(_ arr: inout [Int], leftIdx: Int, rightIdx: Int) {

    if (leftIdx < rightIdx) {
    
        let partitionIdx = partition(&arr, leftIdx: leftIdx, rightIdx: rightIdx)
        
        quickSort(&arr, leftIdx: leftIdx, rightIdx: partitionIdx - 1)
        quickSort(&arr, leftIdx: partitionIdx + 1, rightIdx: rightIdx)
    }
}


func partition(_ arr: inout [Int], leftIdx: Int, rightIdx: Int) -> Int {

    let pivot = arr[rightIdx]
    
    var i = leftIdx - 1 
    for j in leftIdx..<rightIdx {
        if(arr[j] < pivot) {
            i += 1
            let temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
        }
    }
    
    
    let temp = arr[i + 1]
    arr[i + 1] = arr[rightIdx]
    arr[rightIdx] = temp
    
    return i + 1
}

var unsorted = [7, 21, 2, 4, 7, 2, 8]
sort(&unsorted)
print(unsorted)
