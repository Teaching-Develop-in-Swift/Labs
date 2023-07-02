/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */
var firstDecimal = 3.14
var secondDecimal = 1.23
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse = false
//firstDecimal = trueOrFalse
print("We defined 'firstDecimal' variable as type of double and 'trueOrFalse' variable defined as a type of bool. We cant assign bool value to double. So this reason we get compiler error.")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var stringVar = "Arda"
//firstDecimal = stringVar
print("We got compiler error because of the same reason of above example. We can't assign string value to double variable.")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var numbers = 123
//firstDecimal = numbers
print("We got compiler error because of the same reason of above examples. We can't assign int value to double variable. In swift if you want to assign one variable to the other, type of these variables must be same.")
/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
