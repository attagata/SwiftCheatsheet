import Foundation
//Structs
//Structs or structures in Swift allow you to encapsulate related properties and functionality in your code, that you can reuse. Structs are value types.
//We declare them like this:

struct JediSample {
    var name: String
    var midichlorians: Int
}

//You can create an instance of the Jedi struct like this:
var obi_wan_sample = JediSample(name: "Obi-Wan Kenobi", midichlorians: 13400)

//Here's how you can read a property from obi_wan:
print(obi_wan_sample.midichlorians)
// Output: 13400

//We can also include functions inside our structs, like this:
struct Jedi {
    var name: String
    var midichlorians: Int

    func mindTrick() {
        print("These aren't the Droids you're looking for...")
    }
}

// Instance of a struct
var obi_wan = Jedi(name: "Obi-Wan Kenobi", midichlorians: 13400)

// Reading a property
print(obi_wan.midichlorians)

// Calling mindTrick() function
obi_wan.mindTrick()
