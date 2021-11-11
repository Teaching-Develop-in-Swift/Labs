/*:
## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for value in 0...10 {
    print(value)
}

//:  Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for character in alphabet {
    print(character)
}
//:  Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
let dict: [String: String] = ["Italy": "Rome", "UK": "London", "Germany": "Berlin"]
for (key, value) in dict {
    print("\(key) \(value)")
}
/*:
page 1 of 6  |  [Next: App Exercise - Movements](@next)
 */
