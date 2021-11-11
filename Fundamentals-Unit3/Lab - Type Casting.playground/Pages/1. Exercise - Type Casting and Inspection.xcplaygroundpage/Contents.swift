/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = ["string", 2 , 3.0, false]
print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for elm in collection {
    if let integer = elm as? Int {
        print("The integer has a value of \(integer)")
    }
}

for elm in collection {
    if let integer = elm as? Double {
        print("The Double has a value of \(integer)")
    }
}

for elm in collection {
    if let integer = elm as? String {
        print("The String has a value of \(integer)")
    }
}

for elm in collection {
    if let integer = elm as? Bool {
        print("The Bool has a value of \(integer)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let myDict: [String: Any] = ["one": 3, "two": "second", "three": true]
print(myDict)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

 for (_, value) in myDict {
    if let theValue = value as? Int {
        total += Double(theValue)
    } else if let doubleValue = value as? Double {
        total += doubleValue
    } else if let stringValue = value as? String {
        total += 1
    } else if let boolValue = value as? Bool {
         if boolValue {
             total += 2
         } else {
             total -= 3
         }
    }
 }

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, value) in myDict {
   if let theValue = value as? Int {
        total2 += Double(theValue)
   } else if let doubleValue = value as? Double {
        total2 += doubleValue
   } else if let stringValue = value as? String, let stringParsed = Double(stringValue) {
        total2 += stringParsed
   }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
