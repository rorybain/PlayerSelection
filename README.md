Select players game written in Swift

Uses MVVM architecture.

Notable Dependencies

  - Cocoapods 1.2.1
    - Uses Cuckoo to generate mocks/stubs for testing
    - Uses Quick/Nimble for more readable tests
    - Uses Alamofire for networking
    - Uses ObjectMapper to deserialise responses
    - Uses Nuke for async image loading
    - Uses SwiftLint to maintain tidiness
  - Xcode 8.3.3

Error handling is limited due to time constraints, should certainly be improved.

UI could do with a tidy up, though it has some niceties. It can display any number of cards (limited to the size of the screen) using a stack view and has some basic animations in showing 'cards'.

The majority of the logic for the application is contained within Modules/Cards. Each component used inside this adheres to protocols that are injected into one another.
