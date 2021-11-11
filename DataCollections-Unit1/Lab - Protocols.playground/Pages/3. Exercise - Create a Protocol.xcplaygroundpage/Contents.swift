/*:
## Exercise - Create a Protocol
 
 Create a protocol called `Vehicle` with two requirements: a nonsettable `numberOfWheels` property of type `Int`, and a function called `drive()`.
 */
protocol Vehicle {
    var numberOfWheels: Int { get set }
    func drive()
}
//:  Define a `Car` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 4, and `drive()` should print "Vroom, vroom!" Create an instance of `Car`, print its number of wheels, then call `drive()`.
struct Car: Vehicle {
    var numberOfWheels: Int = 4
    
    func drive() {
        print("Vroom, vroom!")
    }
}

let ferrari = Car()
print(ferrari.numberOfWheels)
ferrari.drive()
//:  Define a `Bike` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 2, and `drive()` should print "Begin pedaling!". Create an instance of `Bike`, print its number of wheels, then call `drive()`.
struct Bike: Vehicle {
    var numberOfWheels: Int = 2
    
    func drive() {
        print("Begin pedaling!")
    }
}

let bike = Bike()
print(bike.numberOfWheels)
bike.drive()
/*:
[Previous](@previous)  |  page 3 of 5  |  [Next: App Exercise - Similar Workouts](@next)
 */
