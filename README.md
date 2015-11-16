  <img src="https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/swift-logo.jpg" width="400">
  
# ABCircularProgressView

`ABCircularProgressView` is a simple circular progress view written in Swift 2, it draws the circular progress and a stop button (App store look like)


#### Screenshots:
<img src="https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/screenshot1.png" width="400">


An example in one of my apps. [link](https://itunes.apple.com/en/app/id994829561):

<img src="https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/screenshot.png" width="400">

`ABCircularProgressView` inherits from UIView, so you can just use it as a normal view in the `Interface builder`

<img src="https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/interface-builder.png" width="400">

## Usage

```swift
//define it
@IBOutlet weak var progressView: ABCircularProgressView!

//start the spinning
progressIndicatorView.startSpinning()

//use it in the main thread
let dispatchTime: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(2 * NSEC_PER_SEC));
let dispatchQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)
dispatch_after(dispatchTime, dispatchQueue) { () -> Void in
    var progress: CGFloat = 0
    for i in 0..<101 {
        progress = CGFloat(Float(i) / 100.0)
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.progressIndicatorView.progress = progress
        })
        usleep(10000)
    }
}
```

## Properties

####progress: `CGFloat `
The the progress value. Between 0 and 100. Change its value in order to change the visual progress of the component. Default is `0`.

####tintCGColor: `CGColor`
The color of the progress view and the stop icon. Default is `UIColor.blueColor().CGColor`.

####stopSizeRatio: `CGFloat`
 Size ratio of the stop button related to the progress view, default 1/3 of the progress view. Default is `0.3`.

####progressBackgroundOpacity: `Float`
The Opacity of the progress background layer. Default is `0.1`.

####lineWidth: `CGFloat`
The width of the line used to draw the progress view. Default is `1.0`.

## Methods
```swift 
override public init(frame: CGRect)
```
Initialize with a frame. Please only use square frames.

```swift 
override func layoutSubviews
```
Draws the view when called.

```swift
public func startSpinning()
```
Start the progress view spin animation.

```swift 
public func stopSpinning()
```
Stop the progress view spin animation., if any.

```swift 
public func isSpinning() -> Bool
```
Check if the progress view spin animation is active.

## Playgroud example
<img src="https://raw.githubusercontent.com/adilbenmoussa/ABCircularProgressView/master/Images/playground.png" width="600">

## Installation

###[CocoaPods](http://cocoapods.org)

Simply add the following lines to your `Podfile`:
```ruby
# required by Cocoapods 0.36.0.rc.1 for Swift Pods
use_frameworks! 

pod 'ABCircularProgressView', '~> 1.0'
```

*(CocoaPods v0.36 or later required. See [this blog post](http://blog.cocoapods.org/Pod-Authors-Guide-to-CocoaPods-Frameworks/) for details.)*

##ToDo list
- [x] Playground example
- [x] Project example
- [x] Add spin progress
- [x] Cocoapods support

##Contact
Mail me at [adil.benmoussa@gmal.com](adil.benmoussa@gmal.com)

##Requirements
- iOS 7.0
- Xcode 7, Swift 2.0

##Acknowledgments
The stopSpinning and stopSpinning implementation was adapted from [here](https://github.com/elbryan/FFCircularProgressView)

##License

The MIT License (MIT)

Copyright (c) 2015 Adil Ben Moussa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.




