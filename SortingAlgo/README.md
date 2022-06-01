# Sorting Algorithms

+ Different sorting algorithms have different inouts that they are good or bad on. For Example let's take this array [2, 3, 4, 5, 6, 7, 8, 1]. Insertion Sort is easier for this, while Bubble Sort will be slower.
+ In-Place sorting algorithms: 
    + Only O(1) space is needed.
    + All manipulation happens within the array.
+ Worst-case space complexity for sorting algorithm is O(n).


Talks about
+ Implementation
+ Time Complexity
+ Space Complexity
+ Stability
+ Post-condition after every iteration
+ Best-case
+ Worst-case
+ Note

## 1. Bubble Sort

+ Implementation:
    + For an array of size N perform N iterations or stop when array is sorted, whichever is earlier. 
    + Each iteration swap adjacent elements if the left element is smaller than current element.
 
+ Time Complexity:
    + Best-case - O(n)
    + Average-case - O(n^2)
    + Worst-case - O(n^2)

+ Space Complexity:
    + O(1)

+ Stability:
    + depends on implementation
    + >  then stable
    + >= then unstable

+ Post-condition after every iteration:
    + After j iterations, j largest elements of the array are sorted at the end of array.

+ Best-case:
    + Array is already sorted.

+ Worst-case:
    + Smallest element is the last element in the given array.
    + The elements in the given array are in descending order.

+ Note:
    + If you want to sort in descending order, then you need to swap adjacent elements if the left one is smaller than the current element. 
    + This way j smallest elements are at the end position in descending order after j iterations.


## 2. Selection Sort

+ Implementation:
    + Iterate through the array elements from 0 to n - 2 index. 
    + Find the smallest element in the sub-array starting from current_index to the end of the array. 
    + Swap the smallest element with the element at current_index.

+ Time Complexity:
    + Best-case - O(n^2)
    + Average-case - O(n^2)
    + Worst-case - O(n^2)

+ Space Complexity:
    + O(1)

+ Stability:
    + Not stable as swapping changes order. For example in [{1, 2, 3, 4, 5}, 8_1, ...., 8_2, .., 7, .....] -> [{1, 2, 3, 4, 5}, 7, ...., 8_2, .., 8_1, .....]

+ Post-condition after every iteration:
    + After j iterations, j smallest elements of the array are sorted at the beginning of array.

+ Best-case:
    + Independent of the way the elements are arranged

+ Worst-case:
    + Independent of the way the elements are arranged

+ Note:
    + If you want to sort in descending order, then iterate through the elements in reverse order from n - 1 to 1 index.
    + Find smallest element in the subarray from 0 to current_index.
    + Swap the smallest element with the element at current_index.


## 3. Insertion Sort

+ Implementation:
    + Maintain a sorted sub-array.
    + Iterate through the elements from index 1 to n - 1.
    + Move the element at index current_idx to the correct position at the sorted sub-array 0 to current_index, by swapping it with the element on the right only if it is greater.

+ Time Complexity:
    + Best-case - O(n)
    + Average-case - O(n^2)
    + Worst-case - O(n^2)

+ Space Complexity:
    + O(1)

+ Stability:
    + Depends on how elements are swapped into the sorted array. Stable if swap is performed when the element on the right are strictly greater than the current element.

+ Post-condition after every iteration:
    + At the end of j iterations, the first j elements of the array are sorted. 
    + Do note that they might not be in the correct positions.

+ Best-case:
    + Array elements are already sorted.

+ Worst-case:
    + The elements in the given array are in descending order.

+ Note:
    + If you want to sort in descending order, maintain a sorted sub-array.
    + Iterate through the elements from index 1 to n - 1.
    + Move the element at index current_idx to the correct position at the sorted sub-array 0 to current_index, by swapping it with the element on the right only if it is lesser.


## 4. Merge Sort

+ Implementation:
    + It uses a divide-and-conquer strategy.
    + Divide: split the array into two halves.
    + Recurse: sort the two halves.
    + Combine: merge the two sorted halves.

+ Time Complexity:
    + Best-case - O(n logn)
    + Average-case - O(n logn)
    + Worst-case - O(n logn)

+ Space Complexity:
    + o(n)

+ Stability:
    + Depends on merging algorithm. Stable if, when two elements are compared, the element from second array is added to the sorted only when it is strictly smaller than the element from first array.

+ Post-condition after every iteration:
    + After every iteration the subarray in the right are sorted then the subarray in left, then recursively zoom out, as the entire array is sorted.

+ Best-case:
    + Best case takes about half as many iterations as its worst case.

+ Worst-case:
    + Array size is small.
    + Array is already sorted.

+ Note:
    + If you want to sort in descending order, then change the condition in merging function. First add the largest of the two elements under comparison to the sorted array.


## 5. Quick Sort

+ Implementation:
    + It uses a divide-and-conquer strategy.
    + Divide: Partition the array into two subarrays around a pivot x such that elements in lower subarray less or than equal to x and  elements in upper sub-array greater than or equal to x.
    + Conquer: Recursively sort the two sub-arrays.
    + Combine: Trivial, do nothing.
    + Key is to find an efficient partition sub-routine, ideally median element.

+ Time Complexity:
    + Best-case - O(n * logn)
    + Average-case - O(n * logn)
    + Worst-case - O(n^2)

+ Space Complexity:
    + O(1)

+ Stability:
    + Generally not stable.
    + Cabemade stable with O(n) space implementation.

+ Post-condition after every iteration:
    + After the partition function is applied, the pivot element will be in the correct position, that is, same as the sorted array.

+ Best-case:
    + When the median elements is picked as a pivot.
    + Depends on what element the partitioning algorithm chooses.

+ Worst-case:
    + Elements in the array are already sorted.
    + Elements inthe array are sorted in the reverse order.
    + All elements are the same (a specialcase of cases 1 and 2).

+ Note:
    + If you want to sort in decreasing order, then do the following.
    + Divide: Partition the array into two subarrays around a pivot x such that elements in lower subarray greater than or equal to x and  elements in upper sub-array less than or equal to x.
    + Conquer: Recursively sort the two sub-arrays.
    + Combine: Trivial, do nothing.


## 6. Bogo Sort

#### Note: BogoSort also known as permutation sort, stupid sort, slow sort, shotgun sort or monkey sort

+ Implementation:
    + Choose a random permutation.
    + Check if it is sorted.
    + If it is sorted, return the current array or repeat and find another permutation.

+ Time Complexity:
    + Best-case - O(n)
    + Average-case - O(n * n!)
    + Worst-case - O(n * n!)

+ Space Complexity:
    + O(1)

+ Stability:
    + Not stable as the permutations generated might switch the positions of elements.

+ Post-condition after every iteration:
    + 

+ Best-case:
    + When the first permutation generated is sorted. 
    + Does not depend on the order of elements.

+ Worst-case:
    + When all the permutations have to be exhausted before the sorted is found.

+ Note:
    + If you want to sort in descending order, then check whether the permutation returned is in descending order.
    + Quantum BogoSort - 
        1. Choose a random premutation of the array. 
        2. If it is sorted return it, or else destroy the universe.
    + Maybe BogoSort - 
        1. Choose a random permutation of the array, let's call this A. 
        2. If A[1] is minimum item in A then MaybeBogoSort(A[1...n-1]), or else MaybeBogoSort(A[0...n-1])




## 7. Ingrassia-Kurtz Sort

+ Implementation:
    + Generate all permutations.
    + Sort the permutations (by number of inversions) by using bogosort.
        + Recurse.
        + After n! recursions, use QuickSort for the base case.
    + Return the first element in the sorted list of permutations

+ Time Complexity:
    + Best-case - O(n!)
    + Average-case - O((n!)!)
    + Worst-case - O((n!)!)

+ Space Complexity:
    + O(n!)

+ Stability:
    + Not stable as they are random permutations generated.

+ Post-condition after every iteration:
    + 

+ Best-case:
    + The generated permutations are already sorted.

+ Worst-case:
    + The generated permutations are in random order.

+ Note:
    + If you want to sort in descending order, then return the one with most number of inversions.