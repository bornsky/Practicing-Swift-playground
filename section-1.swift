// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct heat {
    var temperature: Float
    init() {
        temperature = 80.0
    }
}
 var h = heat()
println("it is about \(h.temperature)")

// ################# Celsius #####################

struct Celsius {
    var temperature: Double = 0.0
    init(fromFahn fahn: Double) {
    temperature = (fahn - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperature = kelvin - 236.15
    }
}
let boilingTemp = Celsius(fromFahn: 212.0)


// #################### HTTP ####################


let http = (404, "not found")

let (statusCode, statusMessage) = http
println("\(http)")

println("\(statusMessage)")

let (justTheStatusCode, _) = http
println("hello\(justTheStatusCode)")

println("The code\(http.0)")

// ################ Count ######################

class Count {
    var count = 0
    func increment() {
        count++
    }
    func incrementBy(amount: Int) {
    count += amount
    }
    func reset () {
        count = 0
    }
}

/// ************************* ARC Action *************************************////

class Person {
    let name: String
    init(name: String) { self.name = name}
    var apartment: Apartment?
    deinit {
        println("\(name) this is deiniting")
    }
}

var Reference1: Person?
var Reference2: Person?
var Reference3: Person?

Reference1 = Person(name: "Johnny Calatro")

Reference2 = Reference1
Reference3 = Reference1

Reference1 = nil
Reference2 = nil
Reference3 = nil

class Apartment {
    let number: Int
    init(number: Int) {self.number = number }
    weak var tenant: Person?

    deinit { println("Apartment#\(number) is being deiniting")
    }

    var john: Person?
    var number23: Apartment?
}
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { println ("\(name) is being deinitalizing") }
}

class CreditCard {
    let number: Int
    unowned var customer: Customer
    init(number: Int, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { println("Card #\(number) is being deinitialized") }
}
var john: Customer?

john = Customer(name: "Johnny Apple")
john!.card = CreditCard(number: 1234_5678_9012_34, customer: john!)

john = nil

class Country {
    let name: String
    let capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
    
}


var country = Country(name: "China", capitalName: "Beijiang")

println("I am from the country \(country.name) and the capital \(country.capitalCity.name)")

class HTMLElement {
    
    let name: String
    let text: String?
    
    @lazy var asHTML: () -> String = {
        
        if let text = self.text {
            
        return "<\(self.name)> \(text) </\(self.name)>"
            
        } else {
            
        return "<\(self.name)/>"
            }
    }
    init(name: String, text: String? = nil) {
        self.name = name
        
        self.text = text
        
    }

    deinit {
        println ("\(name) is being deinitialzed")
    }

}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello,world")

println(paragraph?.asHTML())

paragraph = nil


var i = 1
i++

i == 1

let mon = -2
let men = +mon

let charley = true
let sam = false
if sam && charley {
    println("come back again")
}else{
    println("Dont come back")
    
}

let swear = "\"dfgghjj\" -don"

let dollarSign = "\x24"

var emptystring = ""
var anotherempty = String()

if emptystring.isEmpty {
    println("ibdhbw")
}
for character in "dog⬅︎" {
    println(character)
}



if Country.self {
    println("\(swear)")
} else {
    println()







































