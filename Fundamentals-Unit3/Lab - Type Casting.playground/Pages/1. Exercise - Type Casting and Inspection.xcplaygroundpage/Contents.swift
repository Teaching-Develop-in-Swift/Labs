/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = [1.3, 1.4, 5, "A string", false]
print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for element in collection {
    if let value = element as? Int {
        print("The integer has a value of \(value)")
    }
    if let value = element as? Double {
        print("The double has a value of \(value)")
    }
    if let value = element as? String {
        print("The string has a value of \(value)")
    }
    if let value = element as? Bool {
        print("The boolean has a value of \(value)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let dict: [String: Any] = ["Integer": 3, "Double": 1.6, "String": "A string", "Bool": false]
dict.forEach { key, value in
    print("Key: \(key), value: \(value)")
}
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
dict.values.forEach { value in
    if let value = value as? Int {
        total += Double(value)
    }
    if let value = value as? Double {
        total += value
    }
    if let _ = value as? String {
        total += 1
    }
    if let value = value as? Bool {
        if value {
            total += 2
        } else {
            total -= 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
dict.values.forEach { value in
    if let value = value as? Int {
        total += Double(value)
    }
    if let value = value as? Double {
        total += value
    }
    if let value = value as? String, let doubleValue = Double(value) {
        total += doubleValue
    }
}
print(total)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
