/*:
## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
let x: Int = 10
let y: Int = 3
let multipliedAsIntegers = x * y
print(multipliedAsIntegers)
print("It did not compile beacuse Int and if the first element is a Int, you lose the decimail part")
//:  Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
let xDouble: Double = 10
let yDouble: Double = 3.2
let multipliedAsDoubles = xDouble * yDouble
print(multipliedAsDoubles)
print("It compile because you do not lose the decimail part")
//:  Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
print(multipliedAsIntegers)
print(multipliedAsDoubles)
print("In multipliedAsDoubles we keep decimal part")
/*:
[Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
 */
