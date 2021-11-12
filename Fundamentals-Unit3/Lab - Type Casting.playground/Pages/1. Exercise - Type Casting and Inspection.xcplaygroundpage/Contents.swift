/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = [3.33, 2.4, 1, 2, "Ciao", true, false]
print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
collection.forEach {
    if let value = $0 as? Int {
        print("The integer has a value of \(value)")
    } else if let value = $0 as? Double {
        print("The double has a value of \(value)")
    } else if let value = $0 as? String {
        print("The string has a value of \(value)")
    } else if let value = $0 as? Bool {
        print("The boolean has a value of \(value)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let dic: [String: Any] = [
    "key1": 3.33,
    "key2": 3,
    "key3": "Ciao",
    "key4": false
]
print(dic)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
dic.forEach { key, value in
    if let value = value as? Double {
        total += value
    } else if let value = value as? Int {
        total += Double(value)
    } else if value is String {
        total += 1
    } else if let value = value as? Bool {
        total += value ? 2 : -3
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
dic.forEach { key, value in
    if let value = value as? Double {
        total2 += value
    } else if let value = value as? Int {
        total2 += Double(value)
    } else if let value = value as? String, let number = Double(value) {
        total += number
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
