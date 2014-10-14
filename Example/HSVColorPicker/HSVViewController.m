//
//  HSVViewController.m
//  HSVColorPicker
//
//  Created by Nicholas Hart on 10/14/2014.
//  Copyright (c) 2014 Nicholas Hart. All rights reserved.
//

#import "HSVViewController.h"
#import <HSVColorPicker/HSVColorPicker.h>
#import "UIColor+HexCodes.h"

@interface HSVViewController ()<HSVColorPickerDelegate>

@property (weak, nonatomic) HSVColorPicker *colorPicker;
@property (weak, nonatomic) UITextField *colorTextField;

@end

@implementation HSVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // add the color picker and set ourselves as the delegate
    HSVColorPicker * colorPicker = [[HSVColorPicker alloc] initWithFrame:self.view.frame];
    colorPicker.delegate = self;
    colorPicker.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:colorPicker];
    self.colorPicker = colorPicker;
    // add the text field
    UITextField * colorTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    colorTextField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:colorTextField];
    self.colorTextField = colorTextField;
    // set our auto layout constraints
    NSDictionary * views = NSDictionaryOfVariableBindings(colorPicker, colorTextField);
    NSDictionary * metrics = @{ @"colorPickerDimension" : @300.0, @"padding" : @44.0 };
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(==padding)-[colorTextField]-[colorPicker(colorPickerDimension)]->=0-|" options:NSLayoutFormatAlignAllCenterX metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[colorPicker(colorPickerDimension)]-10-|" options:0 metrics:metrics views:views]];
}

- (void)viewWillAppear:(BOOL)animated {
    // set our initial color info
    [self updateViewWithColor:self.colorPicker.color];
}

- (void)updateViewWithColor: (UIColor *) color {
    self.view.backgroundColor = color;
    self.colorTextField.text = [color formatHexCode];
}

#pragma mark - HSVColorPickerDelegate methods

- (void)colorPicker:(HSVColorPicker *)colorPicker changedColor:(UIColor *)color {
    [self updateViewWithColor:color];
}

@end
