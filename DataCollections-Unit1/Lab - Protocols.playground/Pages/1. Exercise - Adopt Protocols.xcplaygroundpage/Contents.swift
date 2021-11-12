/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation
class Human: Codable {
    
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let bob = Human(name: "Bob", age: 25)
let giulia = Human(name: "Giulia", age: 23)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
extension Human: CustomStringConvertible {
    var description: String {
        return "Name: \(name), age: \(age)"
    }
}

print(bob)
print(giulia)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
extension Human: Equatable {
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

print("Bob is equal to Giulia? \(bob == giulia)")
print("Bob is different from Giulia: \(bob != giulia)")
//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
extension Human: Comparable {
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
}

let human1 = Human(name: "Human 1", age: 23)
let human2 = Human(name: "Human 2", age: 21)
let human3 = Human(name: "Human 3", age: 28)

let people = [human1, human2, human3]
let sortedPeople = people.sorted()
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
let encoder = JSONEncoder()
if let encodedHuman = try? encoder.encode(giulia), let humanDescription = String(data: encodedHuman, encoding: .utf8) {
    print(humanDescription)
}
/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
