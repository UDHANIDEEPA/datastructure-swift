import UIKit

func reverseString(_ str: String) -> String {
    var reversedStr = ""
    for character in str {
        reversedStr = "\(character)" + reversedStr
        print(reversedStr)
    }
    
    return reversedStr
}

reverseString("How are you?")

