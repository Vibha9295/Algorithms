import Foundation
import os
import UIKit



var strPattern = "AAAAARAAARAA"
let arrChar = Array(strPattern)
print(arrChar)

var arrACount = [String]()
var intACount = 0
var isRDetected = false

for char in arrChar {
    
    if char == "A" {
        
        if arrACount.contains("R") && isRDetected {
            isRDetected = false
            
            intACount = 0
        }
        
        if intACount == 0 || intACount == 1 {
            intACount += 1
        } else {
            intACount *= 2
        }
        
        arrACount.append(String(intACount))
    } else if char == "R" {
        isRDetected = true
        
        arrACount.append("R")
    }
}

print(arrACount)

var arrA = [[Int]]()
var arrTempA = [Int]()
var intRDetectCount = 0

for char in arrACount {
    
    if char == "R" {
        intRDetectCount += 1
        
        arrA.append(arrTempA)
        
        arrTempA = [Int]()
    } else {
        arrTempA.append(Int(char) ?? 0)
    }
}

arrA.append(arrTempA)
print(intRDetectCount)
print(arrA)

var arrASum = [Int]()
for arr in arrA {
    arrASum.append(arr.reduce(0, +))
}
print(arrASum)

var intTempValue = arrASum.count > 0 ?arrASum[0] : 0
var intResult = arrASum.count > 0 ?arrASum[0] : 0

for i in 1..<(arrASum.count) {
    intResult = intResult - arrASum[i]
}
print(intResult)
