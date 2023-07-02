/*:
## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
- Name: The user's name
- Age: The user's age
- Number of steps taken today: The number of steps that a user has taken today
- Goal number of steps: The user's goal for number of steps to take each day
- Average heart rate: The user's average heart rate over the last 24 hours
 */
let name = "Arda"
print("I define 'name' as a constant because name of the user not changing during application life cycle.")
var age = 30
print("I define 'age' as a variable because age of the user change every birthday. If we define date of birth, then I need to thifine as a constant.")
var numberOfStepsTakenToday = 12_314
print("I define 'numberOfStepsTakenToday' as a variable because number of steps could change when user walk or run.")
let goalNumberOfSteps = 20_000
print("I define 'goalNumberOfSteps' as a constant because number of steps goal of the user not changing during application life cycle.")
var averageHeartRate = 93
print("I define 'averageHeartRate' as a variable because average heart rate could change when user walk or run.")
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
