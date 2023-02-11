/*:
## App Exercise - Printable Workouts

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 The `Workout` objects you have created so far in app exercises don't show a whole lot of useful information when printed to the console. They also aren't very easy to compare or sort. Throughout these exercises, you'll make the `Workout` class below adopt certain protocols that will solve these issues.
 */
import Foundation

class Workout: CustomStringConvertible, Equatable, Comparable, Codable {
    
    var distance: Double
    var time: Double
    var identifier: Int
    
    init(distance: Double, time: Double, identifier: Int) {
        self.distance = distance
        self.time = time
        self.identifier = identifier
    }

    var description: String {
        return "Workout id: \(identifier), Distance : \(distance), Time: \(time) seconds."
    }
    
    static func == (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    static func < (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.identifier < rhs.identifier
    }
    
}

//:  Make the `Workout` class above conform to the `CustomStringConvertible` protocol so that printing an instance of `Workout` will provide useful information in the console. Create an instance of `Workout`, give it an identifier of 1, and print it to the console.
let firstWorkout = Workout(distance: 1000, time: 150, identifier: 1)
print(firstWorkout)

//:  Make the `Workout` class above conform to the `Equatable` protocol. Two `Workout` objects should be considered equal if they have the same identifier. Create another instance of `Workout`, giving it an identifier of 2, and print a boolean expression that evaluates to whether or not it is equal to the first `Workout` instance you created.
let secondWorkout = Workout(distance: 1500, time: 200, identifier: 2)
print(secondWorkout == firstWorkout)

/*:
 Make the `Workout` class above conform to the `Comparable` protocol so that you can easily sort multiple instances of `Workout`. `Workout` objects should be sorted based on their identifier. 
 
 Create three more `Workout` objects, giving them identifiers of 3, 4, and 5, respectively. Then create an array called `workouts` of type `[Workout]` and assign it an array literal with all five `Workout` objects you have created. Place these objects in the array out of order. Then create another array called `sortedWorkouts` of type `[Workout]` that is the `workouts` array sorted by identifier. 
 */
let thirdWorkout = Workout(distance: 800, time: 60, identifier: 3)
let fourthWorkout = Workout(distance: 1500, time: 150, identifier: 4)
let fifthWorkout = Workout(distance: 2000, time: 170, identifier: 5)

let workouts = [fifthWorkout, thirdWorkout, secondWorkout, fourthWorkout, firstWorkout]
let sortedWorkouts = workouts.sorted(by: <)

//:  Make `Workout` adopt the `Codable` protocol so you can easily encode `Workout` objects as data that can be stored between app launches. Use a `JSONEncoder` to encode one of your `Workout` instances. Then use the encoded data to initialize a `String`, and print it to the console.
let jsonEncoder = JSONEncoder()
let data = try! jsonEncoder.encode(firstWorkout)
let string = String(data: data, encoding: .utf8)!
print(string)
/*:
[Previous](@previous)  |  page 2 of 5  |  [Next: Exercise - Create a Protocol](@next)
 */
