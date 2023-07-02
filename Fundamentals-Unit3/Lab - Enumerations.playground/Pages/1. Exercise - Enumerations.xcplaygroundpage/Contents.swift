/*:
## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suit{
    case clubs, spades, diamonds, hearts
}

//:  Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
var cardInHand : Suit = .hearts
print("Card In Hand = \(cardInHand)")

//:  Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
cardInHand = .spades

//:  Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
func getFortune(cardSuit: Suit){
    switch cardSuit{
    case .spades:
        print("A")
    case .hearts:
        print("B")
    case .clubs:
        print("C")
    case .diamonds:
        print("D")
    }
}

getFortune(cardSuit: .diamonds)
getFortune(cardSuit: .hearts)
getFortune(cardSuit: .spades)
getFortune(cardSuit: .clubs)
//:  Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
struct Card{
    var suit : Suit
    var value : Value
    
    enum Value {
        case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    }
}

//:  How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
let card1 = Card(suit: .clubs, value: .five)
let card2 = Card(suit: .hearts, value: .ace)

print("Card1 - Suit = \(card1.suit) - Value = \(card1.value)")
print("Card2 - Suit = \(card2.suit) - Value = \(card2.value)")

/*:
page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
 */
