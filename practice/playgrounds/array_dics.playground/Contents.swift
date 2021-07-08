import UIKit

//Arrays
var array_greeting = ["Hello", "playground"]

var array_str_greeting: [String] = ["Hello", "playground"]

var array_any_greeting: [Any] = [09, 06, 2021, "Hello", "playground"]

array_greeting.count
array_str_greeting.count
array_any_greeting.count


var array_with_arrays: [Any] = [array_greeting, array_str_greeting, array_any_greeting]

array_greeting.append("!")
array_greeting.insert(",", at: 1)
array_greeting.removeLast()
array_greeting

array_greeting.sort()


//Dics
var X=[Int]()
X=[1,2]


import Foundation
let number = 16.0
print("\(number) squared is \(number * number), and its square root is \(sqrt(number))")


var set1 = Set([3, 4, 5])
var set2 = Set([3, 4, 7])

set1.intersection(set2)




//init(time: String) {self.time = time}

