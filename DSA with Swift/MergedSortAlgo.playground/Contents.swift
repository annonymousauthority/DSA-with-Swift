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

public func findDayoftheWeek(_ S : inout String, _ K : Int) -> String {
        // write your code in Swift 4.2.1 (Linux)
    let daysIndex = K % 6
    print(daysIndex)
    let day_of_the_week = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    let totalIndex = day_of_the_week.count - 1
    for (index,day) in day_of_the_week.enumerated(){
        if (S == day){
            if daysIndex < 3 && daysIndex + index < 6 {
                let actualIndex = daysIndex + index
                return day_of_the_week[actualIndex]
            }else{
                let actualIndex = totalIndex - (daysIndex + index)
                print(actualIndex)
                return day_of_the_week[abs(actualIndex)]
            }
        }
    }

    return "Not Found"


}
var test = "Wed"
findDayoftheWeek(&test, 24)
