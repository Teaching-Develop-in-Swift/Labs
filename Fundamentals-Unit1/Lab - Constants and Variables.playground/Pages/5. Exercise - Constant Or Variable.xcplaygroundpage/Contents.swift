/*:
## Exercise - Constant or Variable?
 
 Imagine you're creating a simple photo sharing app. You want to keep track of the following metrics for each post:
- Number of likes: the number of likes that a photo has received
- Number of comments: the number of comments other users have left on the photo
- Year created: The year the post was created
- Month created: The month the post was created represented by a number between 1 and 12
- Day created: The day of the month the post was created
 
 For each of the metrics above, declare either a constant or a variable and assign it a value corresponding to a hypothetical post. Be sure to use proper naming conventions.
 */

import Foundation
var numberOfLikes = 10 /// The number of likes of a post can change, so it has to be a variable.
var numberOfComments = 6 /// The number of comments of a post can change, so it has to be a variable.
let yearCreated = 2021 /// The post creation date do not change, so year, month and day must be constants.
let monthCreated = 11
let dayCreated = 7

/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Fitness Tracker: Constant or Variable?](@next)
 */
