import Foundation

func numberOfWeakCharacters(_ properties: [[Int]]) -> Int {
    var weakCount = 0
    let checker = "Weak Found"
    for characters in 0..<properties.count{
        if characters != properties.count - 1 {

            if properties[characters][0] <= properties[properties.count - 1][0] && properties[characters][1] <= properties[properties.count - 1][1]  {
                weakCount += 1
                print(checker)
            }
        }
    }
    return weakCount
}
numberOfWeakCharacters([[5,5],[6,3],[3,6]])
numberOfWeakCharacters([[2,2],[3,3]])
numberOfWeakCharacters([[1,5],[10,4],[4,3]])
