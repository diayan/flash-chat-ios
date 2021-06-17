# Flash-Chat

## About Flash Chat 

Flash Chat is an internet based messaging app similar to WhatsApp, the popular messaging app that was bought by Facebook for $22 billion. It uses Firebase Firestore as a backend database to store and retrieve messages from the cloud. 

## What I learnt

* Integrate third party libraries using Cocoapods and Swift Package Manager.
* Store data in the cloud using Firebase Firestore.
* Query and sort the Firebase database.
* Use Firebase for user authentication, registration and login.
* UITableViews and how to set their data sources and delegates.
* Create custom views using .xib files to modify native design components.
* Embed View Controllers in a Navigation Controller and understand the navigation stack.
* Create a constants file and use static properties to store Strings and other constants.
* Learnt about Swift loops and create animations using loops.
* Learnt about the App Lifecycle and how to use viewWillAppear or viewWillDisappear.
* Create direct Segues for navigation.


# Constants
```
struct K {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}

```
# flash-chat-ios
