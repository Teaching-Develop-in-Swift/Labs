/*:
## App Exercise - Tracking Different Types
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
You have declared a number of constants and variables to keep track of fitness information. Declare one more variable with a boolean value called `hasMetStepGoal`.
 */
var hasMetStepGoal = false

//:  When you declared a constant for goal number of steps and a variable for current step count, you likely assigned each a value in the thousands. This can be difficult to read. Redeclare this constant and variable and, when assigning each a value in the thousands, format the number so that it is more readable.
var currentStepCount: Int = 5_000
let goalStepCount: Int = 10_000
print("Current step count: \(currentStepCount)")
print("Goal step count: \(goalStepCount)")
print("Has met step goal: \(hasMetStepGoal)")

/*:
[Previous](@previous)  |  page 8 of 10  |  [Next: Exercise - Type Inference and Required Values](@next)
 */
