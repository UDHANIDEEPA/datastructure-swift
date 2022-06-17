import UIKit
//function to reverse the string

func reverseString(_ str: String) -> String {
    var reversedStr = ""
    for character in str {
        reversedStr = "\(character)" + reversedStr
        print(reversedStr)
    }
    
    return reversedStr
}

reverseString("How are you?")

func reverseString2(_ string:String) -> String {
    let stringArray = Array(string)
    var reverseString:[Character] = []
    for i in stride(from: (stringArray.count - 1), through: 0, by: -1) {
        reverseString.append(stringArray[i])
    }
    return String(reverseString)
}

reverseString2("How are you?")

func reverseString3(_ string:String) -> String {
    return String(string.reversed())
}

reverseString3("How are you?")

