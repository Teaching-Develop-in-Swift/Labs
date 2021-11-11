/*:
## Exercise - Extensions
 
 Define an extension to `Character` that includes a function `isVowel()`. The function returns `true` if the character is a vowel (a,e,i,o,u), and `false` otherwise. Be sure to properly handle uppercase and lowercase characters.
 */
extension Character {
    func isVowel() -> Bool {
        if self.lowercased() == "a" || self.lowercased() == "e" || self.lowercased() == "i" || self.lowercased() == "o" || self.lowercased() == "u" {
            return true
        } else {
            return false
        }
    }
}
//:  Create two `Character` constants, `myVowel` and `myConsonant`, and set them to a vowel and a consonant, respectively. Use the `isVowel()` methods on each constant to determine whether or not it's a vowel.
let myVowel: Character = "A"
let myConsonant: Character = "B"

print("myVowel is a vowel? \(myVowel.isVowel())")
print("myConsonant is a vowel? \(myConsonant.isVowel())")
//:  Create a `Rectangle` struct with two variable properties, `length` and `width`, both of type `Double`. Below the definition, write an extension to `Rectangle` that includes a function, `halved()`. This function returns a new `Rectangle` instance with half the length and half the width of the original rectangle.
struct Rectangle {
    var lenght: Double
    var width: Double
    
    func halved() -> Rectangle {
        return Rectangle(lenght: self.lenght / 2, width: self.width / 2)
    }
    
    mutating func half() {
        self.lenght = self.lenght / 2
        self.width  = self.width / 2
    }
}

let firstRectangle = Rectangle(lenght: 12, width: 12)
let secondRectangle = firstRectangle.halved()
print(secondRectangle)
/*:
 Within the existing `Rectangle` extension, add a new mutating function, `half()`, which updates the original rectangle to have half the length and half the width. Use the `halved()` function as part of the implementation for `half()`.
 
 Below, create a variable `Rectangle` called `myRectangle`, and set its length to 10 and its width to 5. Create a second instance, `mySmallerRectangle`, that's the result of calling `halved()` on `myRectangle`. Then update the values of `myRectangle` by calling `half()` on itself. Print each of the instances.
 */
var myRectangle = Rectangle(lenght: 10, width: 5)
var mySmallerRectangle = myRectangle.halved()
myRectangle.half()
/*:
page 1 of 2  |  [Next: App Exercise - Workout Extensions](@next)
 */
