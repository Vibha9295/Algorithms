import UIKit

//input: 2 3 4 Sum = 9, multiple = 24
//output: 15


func subtractProductAndSum(_ n: Int) -> Int {
    var n = n
    var sum = 0
    var own = 1
    while n > 0 {
        sum = sum + (n % 10)
        own = own * (n  %  10) // Add least significant digit ...
        n /= 10   // ... and remove it from the number.
    }

    return  own - sum
}

print(subtractProductAndSum(234))
