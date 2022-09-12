import Foundation

func fib(_ n: Int) -> Int {
    if n == 0{
        return 0
    }

    if n == 1 {
        return 1
    }

    var f_n = [0,1]
    var count = 2

    while count <= n{
        let number_sequence = f_n[count - 1] + f_n[count - 2]
        print(number_sequence, count)
        f_n.append(number_sequence)
        print(f_n)
        count += 1
    }

    return f_n[n]
}

//fib(3)

func distributeCandies(_ candyType: [Int]) -> Int {
    let output = 0
    _ = candyType.count / 2
    var candygroups = [[0]]
    for type in 0..<candyType.count {
        var group = [type]
        for forward in 1..<candyType.count{
            if candyType[type] == candyType[forward] {
                group.append(forward)
                candygroups.append(group)
            }
        }
    }
    return output
}
//distributeCandies([1,1,2,2,3,3])


func rotatedDigits(_ n: Int) -> Int {
    var valid = 0
    _ = ["2","5","6","9"]
    let invalidNumbers = ["1","3","4","7","8","10"]
    for i in 1..<n+1{
        if i > 10 {
            var invalidCount = 0
            print(i)
            for j in String(i){
                if invalidNumbers.contains(where: {$0 == j.description}) {
                    print("Invalid")
                    invalidCount += 1
                }
            }
            if invalidCount == 0 {
                valid += 1
            }
            print(valid)
        }else{
            var invalidCount = 0
            if invalidNumbers.contains(where: {$0 == String(i)}) {
                invalidCount += 1
            }
            if invalidCount == 0 {
                valid += 1
            }
        }
    }
    return valid
}
//rotatedDigits(857)


func decrypt(_ words: String) -> String{
    var decrytedWord = ""
    var nextValue = 1
    if words.isEmpty{
        return ""
    }
    for text in words{
        var asciiVal = Int(text.asciiValue!) - nextValue
        print(asciiVal)
        while asciiVal < Int(Character("a").asciiValue!){
            asciiVal += 26
        }
        nextValue += asciiVal
        print(asciiVal)
        let newChar = Character(UnicodeScalar(asciiVal)!)
        decrytedWord = decrytedWord.appending(String(newChar))
    }
    return decrytedWord
}
decrypt("flgxswdliefy")
