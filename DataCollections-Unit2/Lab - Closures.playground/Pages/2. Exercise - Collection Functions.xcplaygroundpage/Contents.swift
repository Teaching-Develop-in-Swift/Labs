/*:
## Exercise - Passing Closures as Arguments and Syntactic Sugar

 Define a function `forwards` that has two `String` arguments, `name1` and `name2`, and returns a `Bool`. Within the definition of the function, print each of the arguments, then return whether or not `name1` is less than `name2`. You can use comparison operators, such as `<` and `>`, to compare alphabetical order in strings.
 */
func forwards(name1: String, name2: String) -> Bool {
    print(name1)
    print(name2)
    return name1 < name2
}

//:  Create a `[String]` collection using names of your friends and family. Call the collection's `sorted(by:)` function, passing in `forwards` as the argument. Store the result into `sortedCollection1`, then print the result. This should sort your collection alphabetically.
let family = ["Simon", "Louise", "Mia"]
let sortedCollection1 = family.sorted(by: forwards)
print(sortedCollection1)
//:  Using your initial collection of unsorted friends and family names, call the collection's `sorted(by:)` function, but pass in your own closure instead of the `forwards` function. The closure should sort the collection in the same way as `forwards`. Be sure to include parameter names, parameter types, and the `return` statement within your closure. Store the result in `sortedCollection2`, then print the result.

//let sortedCollection2 = family.sorted { (name1: String, name1: String) -> Bool in return name1 < name2} }

//print(sortedCollection2)

let sortedCollection3 = family.sorted { (name1, name2) -> Bool in return name1 < name2 }

print(sortedCollection3)


let sortedCollection4 = family.sorted { (name1, name2) in return name1 < name2 }

print(sortedCollection4)

let sortedCollection5 = family.sorted { return $0 < $1 }

print(sortedCollection5)

let sortedCollection6 = family.sorted {$0 < $1}

print(sortedCollection6)

let sortedCollection7 = family.sorted(by: <)

print(sortedCollection7)
/*:
[Previous](@previous)  |  page 2 of 3  |  [Next: Exercise - Collection Functions](@next)
 */
