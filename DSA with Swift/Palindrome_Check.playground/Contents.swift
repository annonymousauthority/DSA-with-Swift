import UIKit
func isPalindrone(_ x: Int) -> Bool{
    if x.words.isEmpty {
        return false
    }

    var numberArray = Array<Int>()
    var reversedArray = Array<Int>()
    var number = x

    if x / 10 == 0 {
        if x.signum() == -1 {
            return false
        }else{
            return true
        }
    }

    while number / 10 != 0{
        let y = number % 10
        if y.signum() == -1 {
            reversedArray.append(abs(y))
        }else{
            reversedArray.append(y)
        }
        number = number / 10
    }
        // Append any remaining number
    reversedArray.append(number)
    print(reversedArray)
    numberArray = reversedArray.reversed()

    if reversedArray == numberArray{
        return true
    }
    return false
}
isPalindrone(-1)
