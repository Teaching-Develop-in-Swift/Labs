/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = [10, 20.5, "Hello", true, 30]
print("Contents of the collection: \(collection)")


//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in collection {
    switch item {
        case let x as Int:
            print("The integer has a value of \(x)")
        case let x as Double:
            print("The double has a value of \(x)")
        case let x as String:
            print("The string has a value of \(x)")
        case let x as Bool:
            print("The boolean has a value of \(x)")
        default:
            print("Unknown type")
    }
}


//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 
let dict: [String : Any] = ["intValue": 10, "doubleValue": 20.5, "stringValue": "Hello", "boolValue": true]
print("Key/value pairs in the dictionary: \(dict)")

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 
var total: Double = 0
for (_, value) in dict {
    switch value {
        case let x as Int:
            total += Double(x)
        case let x as Double:
            total += x
        case let x as String:
            total += 1
        case let x as Bool:
            total += x ? 2 : -3
        default:
            print("Unknown type")
    }
}
print("Total: \(total)")

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 
var total2: Double = 0
for item in collection {
    switch item {
        case let x as Int:
            total2 += Double(x)
        case let x as Double:
            total2 += x
        case let x as String:
            if let y = Double(x) {
                total2 += y
            }
        default:
            break
    }
}
print("Total2: \(total2)")

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
