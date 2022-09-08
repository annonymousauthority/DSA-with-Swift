import UIKit

func checkDistances(_ s: String, _ distance: [Int]) -> Bool {
    var checker = false
    let characters = "abcdefghijklmnopqrstuvwxyz"
    print(characters.firstIndex(of: "a")!.utf16Offset(in: characters))
    for (index, element) in s.enumerated(){
        for (forward_index, forward) in s.enumerated(){
            if element == forward && index != forward_index {
                print(element, forward, distance[characters.firstIndex(of: element)!.utf16Offset(in: characters)],( forward_index - (index+1)), index, forward_index)
                if forward_index - (index + 1) >= 0 {
                    if distance[characters.firstIndex(of: element)!.utf16Offset(in: characters)] == ( forward_index - (index + 1)){
                        print(element, forward, distance[characters.firstIndex(of: element)!.utf16Offset(in: characters)],( forward_index - (index+1)), index, forward_index)
                        checker = true
                    }else{
                        return false
                    }
                }
            }
        }
    }
    return checker
}

checkDistances("abbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyyzza",
               [49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0])
