import UIKit
func mergedSortAlgo<T: Comparable>(_ array: [T]) -> [T] {
    if array.count <= 1 {
        return array
    }

    let midpoint = array.count / 2
    let left = mergedSortAlgo(Array(array[0..<midpoint]))
    let right = mergedSortAlgo(Array(array[midpoint..<array.count]))
    var sortedArray = Array<T>()

    var leftIndex = 0
    var rightIndex = 0
    while leftIndex < left.count && rightIndex < right.count{
        if left[leftIndex] < right[rightIndex] {
            sortedArray.append(left[leftIndex])
            leftIndex += 1
        }else{
            sortedArray.append(right[rightIndex])
            rightIndex += 1
        }
    }

    sortedArray.append(contentsOf: left[leftIndex..<left.count])
    sortedArray.append(contentsOf: right[rightIndex..<right.count])
    print(sortedArray)
    return sortedArray

}
mergedSortAlgo(["Aaron Allum", "Aaron Augustine", "Andrew Tate", "Barnabas Philip", "Felix Camile"])

