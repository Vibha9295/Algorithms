import UIKit

//func LongestWord(_ sen: String) -> String {
//    var word = String()
//    word = sen
//    let wordArray = word.components(separatedBy: " ")
//    var maxLength = ""
//
//    for index in 0..<(wordArray.count) {
//        if wordArray[index].count > maxLength.count {
//            maxLength = wordArray[index]
//        }
//    }
//
//    return maxLength
//}
//print(LongestWord("The quick brown fox jumped over the lazy dog"))
func LongestWord(_ sen: String) -> String {
 var word = String()
    word = sen
    
    let wordArray = word.components(separatedBy: " ")
    var maxLength = ""

    for index in 0..<(wordArray.count) {
        if wordArray[index].count > maxLength.count {
            word = wordArray[index]
        }
    }

    return word
  // code goes here
  // Note: feel free to modify the return type of this function
  //return sen

}

// keep this function call here
print(LongestWord("fun&!! time"));
