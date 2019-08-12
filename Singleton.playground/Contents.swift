import UIKit

class Car {
    var color: String = "Red"
}

class Car2 {
    var color: String = "Red"
    
    static let singletonCar = Car()
}

let myCar = Car()
myCar.color = "Blue"

let yourCar = Car()
print(yourCar.color)

// Singleton cars
let myCar2 = Car2.singletonCar
myCar2.color = "Blue"

let yourCar2 = Car2.singletonCar
print(yourCar2.color)

class A {
    init() {
        Car2.singletonCar.color = "Brown"
    }
}

class B {
    init() {
        print(Car2.singletonCar.color)
    }
}

let a = A()
let b = B()
b.
