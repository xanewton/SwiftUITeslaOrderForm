# SwiftUITeslaOrderForm

iOS application to learn SwiftUI based on eBook [SwiftUI Projects](https://www.packtpub.com/product/swiftui-projects/9781839214660) from Craig Clayton.
eBook source code available at [github](https://github.com/PacktPublishing/SwiftUI-Projects).

<p float="left">
  <img src="/readmeImages/main.png" width="20%" height="20%">
  <img src="/readmeImages/order_complete.png" width="20%" height="20%">
</p>


## Pre-requisites
- xCode 12.4 or higher
- MAC machine


## References
- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [State](https://developer.apple.com/documentation/swiftui/state)
  When using State, persistent storage is created by SwiftUI for each of our views. For example:
   @State private var isDriverEnabled: Bool = false
   By adding @State, we tell the system that the isDriverEnabled variable changes over time, and that views will depend on this value. Changes to @State-wrapped properties initiate a re-rendering of the view when the values are updated. Every change is dispersed to all of the views of the children.
   
- [Binding](https://developer.apple.com/documentation/swiftui/binding)
When you need to pass State through to child views, you will use @Binding. Binding has read and write access to the value without any ownership. To create a binding, you just need to pass a State property using the $ prefix, which provides a reference of the property to the child view. For example:
```
    @State private var isDriveEnabled: Bool = false
    var body: some View {
        ChildView(driverEnabled: $isDriveEnabled)
    }
```
Inside of the child view, you would just use the following:
``` @Binding driverEnabled: Bool ```
Every view marked with State has ownership and properties, and using Binding has read and write access but no ownership.

- [Combine](https://developer.apple.com/videos/play/wwdc2019/722/)
Combine is a framework introduced in iOS 13, and it brings a native approach to reactive programming.
Using Combine helps you with synchronous and asynchronous tasks.
Combine is composed of three main ingredients:
   a) Publishers
   b) Subscribers
   c) Operators
 
 **Publishers** transmit a sequence of values over time. Their pattern is similar to a notification center. There are four kinds of messages that a publisher can transmit:
    a) Subscription: You cannot have a publisher without a subscriber. The connection between the publisher and subscriber would be the subscription.
    b) Value: The value can be any data type that you might want to be sent and received.
    c) Error: You can transmit an error when one occurs, and the subscriber can respond accordingly.
    d) Completion: This value is an optional value but transmits a signal when the stream has successfully ended, and no more data will be transmitted.
A publisher can be denoted as follows:
``` PublisherName<Output, Failure> ```

**Subscribers** declare a type that they can receive from a publisher. If your publisher is transmitting a string type, then your publisher must receive a string as well. There are two parts to a subscriber:
   a) Input: The data type it can receive
   b) Failure: The error type it can receive
A subscriber can be denoted as follows:
``` SubscriberName<Input, Failure> ```
A subscriber's three essential functions are receiving a subscription, obtaining a value, and receiving a completion or failure (error) from a publisher.

**Operators** are the middleman between the publisher and the subscriber. They convert the value into the correct type.





## License

Copyright 2021 Angel Newton

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
