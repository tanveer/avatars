// Playground - noun: a place where people can play

import UIKit
class Lion {
    var name = ""
    var age = 0
    var spicies = ""
    var alphaMale = false
    func showAnimal(name: String){
        
        println("\(name) is a \(lion.spicies)")
        
    }
}

let lion = Lion()

lion.age = 1
lion.name = "Mufasa"
lion.alphaMale = true
lion.spicies = "West American"


lion.showAnimal("Mufasa")

var lions = (name: lion.name, age: lion.age, spicies: lion.spicies)

switch lions{
    case ("Mufasa", 12, "West American"):
        println("Yes it's true!")
    case (_ ,12, "West American"):
        println("Yes it's true")
    default:
        println("No it's not true")
    
}




