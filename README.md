# HSVColorPicker

[![CI Status](http://img.shields.io/travis/Nicholas Hart/HSVColorPicker.svg?style=flat)](https://travis-ci.org/Nicholas Hart/HSVColorPicker)
[![Version](https://img.shields.io/cocoapods/v/HSVColorPicker.svg?style=flat)](http://cocoadocs.org/docsets/HSVColorPicker)
[![License](https://img.shields.io/cocoapods/l/HSVColorPicker.svg?style=flat)](http://cocoadocs.org/docsets/HSVColorPicker)
[![Platform](https://img.shields.io/cocoapods/p/HSVColorPicker.svg?style=flat)](http://cocoadocs.org/docsets/HSVColorPicker)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

HSVColorPicker uses UIKit and OpenGL.

## Installation

HSVColorPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "HSVColorPicker"

## Adding To Your Code

Currently you must use `initWithFrame:` to initialize HSVColorPicker.  If you use it in a Storyboard with auto layout it will not work, because `initWithFrame:` is not called.  eg:

```
- (void)viewDidLoad {
    [super viewDidLoad];
    // add the color picker and set ourselves as the delegate
    HSVColorPicker * colorPicker = [[HSVColorPicker alloc] initWithFrame:self.view.frame];
    colorPicker.delegate = self;
    [self.view addSubview:colorPicker];
}
```

Be sure to implement the `HSVColorPickerDelegate` in your view controller so you can respond to changes.  eg:

```
- (void)colorPicker:(HSVColorPicker *)colorPicker changedColor:(UIColor *)color {
	// update your UI with color
}
```


## Screen Shot

Below is a screen shot of the example app, which shows what the HSVColorPicker control looks like.

![https://raw.githubusercontent.com/GiantThinkwell/HSVColorPicker/master/ScreenShot.png][screen shot]

## TODO
1. implement autolayout support
2. implement support for UIControlEventValueChanged
3. implement unit tests

## Author

Alex Klein, support@athenstean.com
Nicholas Hart, nick@haikudeck.com

## License

HSVColorPicker is available under the MIT license. See the LICENSE file for more info.

