
func sort(_ arr: inout [Int]) {
    mergeSort(&arr, start: 0, end: arr.count - 1)
}


func mergeSort(_ arr: inout [Int], start: Int, end: Int) {

    let mid: Int = (start + end) / 2
    
    if (start < end) {
        mergeSort(&arr, start: start, end: mid)
        mergeSort(&arr, start: mid + 1, end: end)
        merge(&arr, start: start, mid: mid, end: end)
    }
}

func merge(_ arr: inout [Int], start: Int, mid: Int, end: Int) {
    
    var left_copy: [Int] = [Int](repeating: 0, count: mid - start + 1)
    var right_copy: [Int] = [Int](repeating: 0, count: end - mid)
    
    for i in 0..<left_copy.count {
        left_copy[i] = arr[start + i]
    }
    
    for j in 0..<right_copy.count {
        right_copy[j] = arr[mid + 1 + j]
    }
    
    var left_idx = 0;
    var right_idx = 0;
    var k = start;
    
    while(left_idx < left_copy.count && right_idx < right_copy.count) {
        if(left_copy[left_idx] < right_copy[right_idx]) {
            arr[k] = left_copy[left_idx]
            left_idx += 1
        } else {
            arr[k] = right_copy[right_idx]
            right_idx += 1
        }
        k += 1
    }
    
    
    while(left_idx < left_copy.count) {
        arr[k] = left_copy[left_idx]
        left_idx += 1
        k += 1
    }
    
    
    while(right_idx < right_copy.count) {
        arr[k] = right_copy[right_idx]
        right_idx += 1
        k += 1
    }
    
}


var unsorted = [9, 1, 2, 4, 7, 2, 8]
sort(&unsorted)
print(unsorted)