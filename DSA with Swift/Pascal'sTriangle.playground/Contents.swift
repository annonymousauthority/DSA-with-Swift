import UIKit

/// array[array[int]] = output
/// The next array is of size previous array.count + 1
/// To get the values of the next array the preview array has to generate output from the sum of the next value and the previous value
/// example [1] next = [1+0] = [1, 1+0]
/// example [1,1] next = [1, 1+1,1] = [1,2,1]
/// example [1,2,1] next = [1, 1+2, 2+1,1]
/// We know the num rows so each row from zero increments by 1 therefore


func generate(_ numRows: Int) -> [[Int]] {
    var resultArray = [Array<Int>()]
    print(resultArray)
    var growingArray = Array<Int>()
    var number = 0
    while number<numRows {
        growingArray.insert(1, at: number)
        let oldArray = growingArray
        if growingArray.count <= 2 {
            growingArray[number] = 1
            resultArray.insert(growingArray, at: number)
        }else{
            for array_index in 0..<growingArray.count{
                if array_index - 1 >= 0 && array_index < growingArray.count - 1 {
                    growingArray[array_index] = oldArray[array_index - 1] + oldArray[array_index]
                }
            }
           
            resultArray.insert(growingArray, at: number)
        }
        number += 1
    }
    _ = resultArray.popLast()
    return resultArray
}

generate(5)

func getRow(_ rowIndex: Int) -> [Int] {
    var resultArray = [Array<Int>()]
    print(resultArray)
    var growingArray = Array<Int>()
    var number = 0
    while number<rowIndex + 1 {
        growingArray.insert(1, at: number)
        let oldArray = growingArray
        if growingArray.count <= 2 {
            growingArray[number] = 1
            resultArray.insert(growingArray, at: number)
        }else{
            for array_index in 0..<growingArray.count{
                if array_index - 1 >= 0 && array_index < growingArray.count - 1 {
                    growingArray[array_index] = oldArray[array_index - 1] + oldArray[array_index]
                }
            }
            resultArray.insert(growingArray, at: number)
        }
        number += 1
    }
    return resultArray[rowIndex]
}
getRow(3)
