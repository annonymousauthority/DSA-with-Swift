import UIKit

func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    var checker = Array<Int>(repeating: amount + 1, count: amount + 1)
    checker[0] = 0
    print(amount + 1)

    for checked in 1..<amount + 1{
        for coin in coins{
            if checked - coin >= 0 {
                checker[checked] = min(checker[checked], 1 + checker[checked - coin])
            }
        }
    }
    if checker[amount] != amount + 1 {
        return checker[amount]
    }else{
        return -1
    }
}
coinChange([1], 1)
