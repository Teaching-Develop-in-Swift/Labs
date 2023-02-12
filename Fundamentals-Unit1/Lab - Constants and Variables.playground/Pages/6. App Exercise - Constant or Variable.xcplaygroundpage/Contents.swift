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

// declared with let because the user's name should not change once it has been set
let name = "Apiphoom Chuenchompoo"

// declared with var because its value may change as the user gets older.
var age = 35

//declared with var because the number of steps taken by the user will change throughout the day.
var numberOfStepsTakenToday = 8000

//declared with let because the user's goal for the number of steps to take each day should not change
let goalNumberOfSteps = 10000

//declared with var because the user's average heart rate may change over time.
var averageHeartRate = 72


/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
