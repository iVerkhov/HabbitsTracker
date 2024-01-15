## Challenge

Before we move on to our next batch of projects, you have a fresh challenge to complete. This means building a complete app from scratch by yourself, using the skills you’ve acquired over the previous three projects.

This time your goal is to build a habit-tracking app, for folks who want to keep track of how much they do certain things. That might be learning a language, practicing an instrument, exercising, or whatever – they get to decide which activities they add, and track it however they want.

At the very least, this means there should be a list of all activities they want to track, plus a form to add new activities – a title and description should be enough.

For a bigger challenge, tapping one of the activities should show a detail screen with the description. For a tough challenge – see the hints below! – make that detail screen contain how many times they have completed it, plus a button incrementing their completion count.

And if you want to make the app really useful, use Codable and UserDefaults to load and save all your data.

So, there are three levels to this app, and you can choose how far you want to go depending on how much time you have and how far you want to push yourself. I do recommend you at least give each level a try, though – every little bit of practice you get helps solidify your learning!

**Hints:**

- _Start with your data: define a struct that holds a single activity, and a class that holds an array of activities._
- _The class will need to use the Observable macro so SwiftUI can monitor your data for changes._
- _Your main listing and form should both be able to read the shared activities object._
- _Make sure your activity conforms to Identifiable to avoid problems._
- _Present your adding form using sheet(), and your activity detail view (if you add one) using NavigationLink. I recommend against using presentation values for your navigation – keep it simple here!_

Making the button to increment completion count will challenge you, because you need to modify the activity that was passed in. If you’re stuck, the easiest approach is this:

1. _Make your struct conform to Equatable. You don’t need anything special here – just add Equatable after Codable and Identifiable._
1. _Pass both the selected activity and the @Observable class into your detail view._
1. _When the increment button is tapped, copy the existing activity and add 1 to its completion count._
1. _Use firstIndex(of:) to find where the previous activity was in the class’s array, then change it to be your new activity – something like data.activities[index] = newActivity will work. (This requires the Equatable conformance from step 1!)_
1. _This is genuinely a useful app to build, particularly if it were specialized towards a particular interest – if the goal were practicing an instrument then you could imagine a more advanced app suggesting different things to practice, or if the goal were exercise then it might suggest new exercises to keep things mixed up._

As it is, this challenge is only a small app, but I hope it at least makes you think. Good luck!
