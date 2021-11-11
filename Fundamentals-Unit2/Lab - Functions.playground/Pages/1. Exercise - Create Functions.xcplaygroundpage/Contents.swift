/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("Hello, my name is Riccardo and I love Swift programming!")
}
introduceMyself()
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation

func magicEightBall() {
    let randomNumber = Int.random(in: 0...4)
    switch randomNumber {
    case 0...2:
        print("\(randomNumber) is between 0 and 2")
    case 3...4:
        print("\(randomNumber) is between 3 and 4")
    default:
        print("\(randomNumber) is out of range")
    }
}
magicEightBall()
magicEightBall()
magicEightBall()
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
