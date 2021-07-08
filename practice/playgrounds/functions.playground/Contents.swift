import UIKit



//Functions
//Functions are containers of Swift code. They have input and output. You often use functions to create abstractions in your code, and to make your code reusable.

//Here's an example of a function:

func greetUser(name: String, bySaying greeting:String = "Hello") -> String
{
    return "\(greeting), \(name)"
}
//This function has two parameters called name and greeting, both of type String. The second parameter greeting has an argument label bySaying. The return type of the function is String, and its code is written between those squiggly brackets.

//You call the function like the following. The function is called, with two arguments, and the return value of the function is assigned to message.
let message = greetUser(name: "Tagata", bySaying: "Good Night")

//You can call function without optional arg like this.
let message1 = greetUser(name: "Tagata")

//Courses, books, documentation, etc. uses a special notation for function signatures. It'll use the function name and argument labels, like greetUser(name:bySaying:), to describe the function.

