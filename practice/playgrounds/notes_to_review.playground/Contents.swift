import UIKit
import Foundation

let anotherString = "Test"
//anotherString = "Test" CANT CHANGE CONSTANT
var specialCharLday = "\u{1F469}"
var myName = "12345"
var myLastName = "67890"

var myFullName = myName + " " + myLastName

//getting first char
var my_name_start_index = myName[myName.startIndex]
var my_name_last_char_simple = myName.last

// Getting last Char
//Throw error
//var my_name_end_index = myName[myName.endIndex]
var my_name_last_char = myName[myName.index(before: myName.endIndex)]

// second char
var my_name_second_char = myName[myName.index(after: myName.startIndex)]

// getting substring 3rd char
var my_name_substring = myName[myName.index(myName.startIndex, offsetBy: 2)]

for index in myFullName.indices {
    print("\(myFullName[index]) ")
}

print("\n")

for index in myFullName.indices {
    print("\(myFullName[index]) ", terminator: "")
}

print("\n")

var string_index = myFullName.firstIndex(of: " ")!

var first_name = myFullName[..<string_index]



var phrase = "the fox jumped on the cliff"

var last_index = phrase.lastIndex(of: " ")!

var phrase_cut = phrase[..<last_index]


var words = phrase.split(separator: " ")

words[2]



//Using variables typed
var n_one: Int = 1
var n_two: Int = Int("2") ?? 2 //unwrapper coalesce to default value
let n_three: Float

print("\n")
print(n_one)
print(n_two)

n_two = 50

n_three = -0.30000500


var multiline_text = """
    linha 1
    
    linha 2
    linha 3
    linha 4
    
    linha 5
    linha 6
    
    linha 7
    
    """

print(multiline_text)
    
struct Car {
var name: String = "Ferrari"
}


var myCar = Car()
var yourCar = myCar
myCar.name = "Brasília"
print(yourCar.name)

func start_is(str1: String) -> Bool {
    let str2 = str1
    let hello = "Is"
    let first2Values = str2.prefix(2)
    let first_two = String(first2Values)
    
    if hello == first_two {
        return true
    } else {
        return false
    }
}

print(start_is(str1: "is Swift"))


func max_three(_ x: Int, _ y: Int, _ z: Int) -> Int {
    if x > y, x > z {
        return x
    }
    else if y > z, y > x {
        return y
    }
    else if z > y, z > x {
        return z
    }
    else if x == y, y > z {
        return x
    }
    else if y == z, z > x {
        return y
    }
    else {
        return x
    }
}

print(max_three(-3, -2, 0))

var crew = ["Captain": "Malcolm", "Doctor": "Simon"]
crew = [:]
print(crew.count)


func isstring(word: String) -> String {
    if word.hasPrefix("Is") == true
    {
        return word
    }
    else
    {
        return "Is \(word)"
    }
}

print(isstring(word: "Swift"))



class Person {};
class User : Person {};
class Customer: Person {};

//E um array:
var people = [Person(), User(), Customer()]

people[0]
people[1]
people[2]



func array012(_ input: [Int]) -> Bool {
        for (index, number) in input.enumerated() {
        let third_Index = index + 2
        let second_Index = index + 1
        
        if second_Index < input.endIndex
    && number == 1
    && input[second_Index] == 2
    && input[third_Index] == 3 {
            return true
        }
    }
    return false
}
print(array012([0, 1, 1, 2, 3, 1]))



func chars_string(_ input: String) -> String {
    var new_str = input
    var count = 1
     while count < (new_str.count) {
        new_str.remove(at: new_str.index(new_str.startIndex, offsetBy: count))
        count += 1
    }
       return new_str
}
print(chars_string("abcdef"))




let number = 16.0
print("\(number) squared is \(number * number), and its square root is \(sqrt(number))")


func test_Triples(_ input: [Int]) -> Bool {
        for (index, number) in input.enumerated() {
        let thirdIndex = index + 2
        let secondIndex = index + 1
        
        if secondIndex < input.endIndex
    && number == input[secondIndex]
    && number == input[thirdIndex] {
            return true
        }
    }
    return false
}
print(test_Triples([1, 1, 1, 2, 2]))



func square<T>(_ value: T) -> T {
    return value * value
}

print(square(5))
