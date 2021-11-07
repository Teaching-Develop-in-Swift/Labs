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

let userName = "Samuele"
print("This is a constant because the name is always the same, it will never change.")

var userAge = 24
print("This is a variable because age will be incremented year by year.")

var todaySteps = 1000
print("This is a variable because it change during the day and should be reset at the end of the day.")

var stepsGoal = 330
print("I was not sure about this, because it can be a constant, but usually in applications you may have the possibility to change your goal, so I choice a var.")

var todayAverageHeartRate = 70
print("As the today steps: this is a variable because it change during the day and should be reset at the end of the day.")
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
