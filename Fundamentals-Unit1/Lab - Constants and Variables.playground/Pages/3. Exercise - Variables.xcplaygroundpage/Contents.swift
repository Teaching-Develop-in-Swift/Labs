/*:
## Exercise - Variables
 
 Declare a variable `schooling` and set it to the number of years of school that you have completed. Print `schooling` to the console.
 */

var schooling = 6
print("Years of school completed: \(schooling)")

//:  Now imagine you just completed an additional year of school, and update the `schooling` variable accordingly. Print `schooling` to the console.

schooling += 1
print("Years of school completed: \(schooling)")


//:  Does the above code compile? Why is this different than trying to update a constant? Print your explanation to the console using the `print` function.

print("The value of a variable declared with 'var' can be changed, whereas the value of a constant declared with 'let' cannot be changed.")

/*:
[Previous](@previous)  |  page 3 of 10  |  [Next: App Exercise - Step Count](@next)
 */
