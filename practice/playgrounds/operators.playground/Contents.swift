import UIKit

// DECLARE INT
var a: Int = 100
var b: Int = 2

// DECLARE BOOL
let ba: Bool = true
let bb: Bool = false

//Operators
//The assignment operator = assigns what's right of the operator to what's left of the operator. Don't confuse it with ==!
let age = 42

//Swift has a few basic math operators:
//
a + b // for addition (works for strings too)
a - b // for subtraction
a * b // for multiplication
a / b // for division
a % b // for remainder (or use isMultiple(of:))
-a    // for minus (invert sign)
-(-a)

//Unlike other programming languages, Swift does not have -- and ++ operators. Instead it has:
a += b // for addition, such as n += 1 for n++ or n = n + 1
a -= b // for subtraction, such as n -= 1 for n-- or n = n - 1

//You can also use += for arrays:
var rappers = ["Eminem", "Jay-Z", "Snoop Dogg"]
rappers += ["Tupac"]

//CHECKING VALUES
"a=\(a)"
"b=\(b)"

//Swift has 6 comparison operators:
a == b // for equality, i.e. "a is equal to b"
a != b // for inequality, i.e. "a is not equal to b"
a > b  //  for greater than, i.e. "a is greater than b"
a < b  // for less than, i.e. "a is less than b"
a >= b // for greater than or equal
a <= b // for less than or equal

//Swift also has the identity operators === and !==. You can use them to test if two variables reference the exact same object. Contrast this with == and !=, which merely test if two objects are equal to each other.

//You can also compare strings, which is helpful for sorting. Like this:
"abc" > "xyz"         // false
"Starbucks" > "Costa" // true
"Alice" < "Bob"       // true


// CHECKING VALUES
"ba=\(ba)"
"bb=\(bb)"

//Swift has 3 logical operators:
//
ba && bb // for Logical AND, returns true if a and b are true, or false otherwise
ba || bb // for Logical OR, returns true if either a or b is true, or both are true, or false otherwise
!ba      // for Logical NOT, returns true if a is false, and false if a is true (i.e., the opposite of a)


// NEW VALUES
a = 10
b = 20

//Swift has a few range operators. You can use them to define ranges of numbers and strings.
//
//a...b , the closed range operator, defines a range from a to b including b
Array(a...b)

//a..<b, the half-open range operator, defines a range from a to b not including b
Array(a..<b)

// DEFINE ARRAY
var array: [Int] = Array(a...b)

//You can also use one-sided ranges. They're especially useful in arrays.

//a... in array[a...] defines a range from a to the end of the array
array[5...]

//...a in array[...a] defines a range from the beginning of the array to a
array[...5]

//..<a in array[..<a defines a range from the beginning of the array to a, not including a itself
array[..<5]

// You can also check whether a one-sided range contains a particular value, as shown in the code below.
let range = 1...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // false
