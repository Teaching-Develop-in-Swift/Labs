/*:
## Exercise - Return Values

 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greeting(_ name: String) -> String {
    return "Hi, \(name)! How are you?"
}

print(greeting("Dan"))

//:  Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
func MultiplyAndTwo(_ first: Int, by second: Int) -> Int {
    return first * second + 2
}

let result = MultiplyAndTwo(10, by: 10)
print(result)

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
 */
