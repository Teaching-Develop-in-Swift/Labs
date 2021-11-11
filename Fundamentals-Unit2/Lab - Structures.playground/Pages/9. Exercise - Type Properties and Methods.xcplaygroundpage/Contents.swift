/*:
## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
    static var currentUser: User = User(userName: "alessandroDiMajo", email: "ale123@test.it", age: 23)
    
    var userName: String
    var email: String
    var age: Int
    
    static func logIn(user: User) {
        if user.userName  != User.currentUser.userName && user.email  != User.currentUser.email && user.age  != User.currentUser.age {
            print("Success!")
        } else {
            print("Failed, user \(user.userName) is already online")
        }
    }
}

print(User.currentUser)
/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */
let me = User(userName: "ale", email: "alex@mail.it", age: 24)
User.logIn(user: me)
/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
 */
