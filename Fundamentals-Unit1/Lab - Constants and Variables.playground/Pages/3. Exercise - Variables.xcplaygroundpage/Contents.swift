/*:
## Exercise - Variables
 
 Declare a variable `schooling` and set it to the number of years of school that you have completed. Print `schooling` to the console.
 */
var schooling = 18
print(schooling)
//:  Now imagine you just completed an additional year of school, and update the `schooling` variable accordingly. Print `schooling` to the console.
schooling += 1
print(schooling)
//:  Does the above code compile? Why is this different than trying to update a constant? Print your explanation to the console using the `print` function.
print("""
This time we define schooling as a variable. Because of the variable definition can mutable, we can change variable definition after initialization.
""")

/*:
[Previous](@previous)  |  page 3 of 10  |  [Next: App Exercise - Step Count](@next)
 */
