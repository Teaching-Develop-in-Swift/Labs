/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */

var firstDecimal: Double = 3.14159
var secondDecimal: Float = 2.71828

//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse: Bool = true
firstDecimal = trueOrFalse

print("Won't compile because a boolean value and a decimal value are different types")
print("firstDecimal is of type \(type(of: firstDecimal))")
print("secondDecimal is of type \(type(of: secondDecimal))")

//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.

var stringValue: String = "Hello"
firstDecimal = stringValue
print("Won't compile because a string value and a decimal value are different types")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.

var wholeNumber: Int = 42
print("Cannot assign a variable of type \(type(of: trueOrFalse)) to firstDecimal of type \(type(of: firstDecimal))")
print("Cannot assign a variable of type \(type(of: stringValue)) to firstDecimal of type \(type(of: firstDecimal))")
print("Cannot assign a variable of type \(type(of: wholeNumber)) to firstDecimal of type \(type(of: firstDecimal)) without explicit type conversion")

/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
