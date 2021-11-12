/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation
class Human: Codable {
    private let name: String
    private var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let firstHuman = Human(name: "Tim", age: 61)
let secondHuman = Human(name: "Samuele", age: 24)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
extension Human: CustomStringConvertible {
    var description: String {
        return "A human called \(name) of \(age) years old."
    }
}

print(firstHuman)
print(secondHuman)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
extension Human: Equatable {
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

print("Are the two humans equal?", firstHuman == secondHuman)
print("Are the two humans different?", firstHuman != secondHuman)
//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
extension Human: Comparable {
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
}

let midAgeHuman = Human(name: "Jake", age: 50)
let youngHuman = Human(name: "Billy", age: 13)
let oldHuman = Human(name: "Liz", age: 92)

let people = [midAgeHuman, youngHuman, oldHuman]
let sortedPeople = people.sorted()
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
let encoder = JSONEncoder()
if let encodedHuman = try? encoder.encode(oldHuman), let description = String(data: encodedHuman, encoding: .utf8)  {
    print(description)
}
/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
