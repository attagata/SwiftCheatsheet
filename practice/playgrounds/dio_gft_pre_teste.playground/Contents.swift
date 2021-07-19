import UIKit

//----

//class User { var name: String }

//----

var idade = 23
if idade > 18 {
  print("Você já é maior de idade")
} else {
  print("Você ainda é menor de idade")
}

//----

//let names = ["Amy", "Rory"]
//
//for name in names {
//    name = name.uppercased()
//    print("HELLO, \(name)!")
//}
// >> ERRO DE COMPILACAO

//----
var i = 2

repeat {
    i *= i * 2
} while i < 100

print(i)

//----
//var menu = ["Arroz e Feijão",
//                      "Saladas e Molhos”,
//                      "Bife com Fritas"]
//
//var acompanhamento = false
//var pedido = ""
//
//for item in menu {
//       let separator = item.Characters.index(of: " ")!
//       let name = acompanhamento ?
//                     String(item.characters.suffix(from: separator)):
//                     String(item.Characters.prefix(upTo: separator));
//       acompanhamento = true
//
//       pedido += "\(name)"
//}
//print(pedido)
// >> ERRO DE COMPILACAO


// REFACTORED SWIFT 5
var menu = ["Arroz e Feijão",
            "Saladas e Molhos",
            "Bife com Fritas"]

var acompanhamento = false
var pedido = ""

for item in menu {
    
    //let separator = item.Characters.index(of: " ")!
    let separator = item.firstIndex(of: " ")!
    
    let name = acompanhamento ?
        String(item.suffix(from: separator)):
        String(item.prefix(upTo: separator));
    
    acompanhamento = true

    pedido += "\(name)"
}

print(pedido)


//----

class Veiculo{
       func buzinar() {
       print("Bii Bii!")
   }
}

class Motocicleta: Veiculo {
       func buzinarAlto(){
       print("Piii!")
     }
}

class Motoneta: Motocicleta {
       override func buzinar() {
       print("Pi Piii!")
      }
}


let tracker = Motocicleta()
let scooter = Motoneta()

tracker.buzinar()
scooter.buzinar()

//----

//let names = [String]()
//names.append("Amy")
//names.append("Clara")
//names.append("Rory")

// >> ERRO DE COMPILACAO
