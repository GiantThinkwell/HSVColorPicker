//
//  ColorPicker.h
//  StreetSoccer
//
//  Created by Alex Klein on 6/21/13.
//  Copyright (c) 2013 Athenstean.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HueCircleLayer;
@class SaturationBrightnessLayer;
@class MarkerLayer;

@protocol ColorPickerDelegate;

// A Hue/Saturation/Brightness (HSB) color picker control that shows hue as a
// color gradient circle and saturation/brightness in a box inside the circle.
//
// Note, everything is rendered in layers to maximize caching. The hue circle
// is drawn using core graphics and the saturation/brightness box is drawn
// using an OpenGL ES 2.0 layer with a pixel shader.
@interface ColorPicker : UIView<UIGestureRecognizerDelegate>
{
    HueCircleLayer * layerHueCircle;
    SaturationBrightnessLayer * layerSaturationBrightnessBox;
    MarkerLayer * layerHueMarker;
    MarkerLayer * layerSaturationBrightnessMarker;
    CGFloat colorHue;
    CGFloat colorSaturation;
    CGFloat colorBrightness;
    CGFloat colorAlpha;
    CGFloat boxSize;
    CGPoint center;
    CGFloat radius;
    CGFloat thickness;
    unsigned int subDivisions;
    UILongPressGestureRecognizer * hueGestureRecognizer;
    UILongPressGestureRecognizer * saturationBrightnessGestureRecognizer;
    
    NSObject<ColorPickerDelegate> * delegate;
}

// The color represented by the control.
@property (retain) UIColor * color;

// Subdivisions is currently only there to adjust the smoothness of the
// hue circle, but in the future we might actually clip to a lower number
// of discrete values (e.g. allow the user to pick only from 6 values).
@property (assign) unsigned int subDivisions;

@property (assign) NSObject<ColorPickerDelegate> * delegate;
@end

@protocol ColorPickerDelegate <NSObject>
- (void)colorPicker:(ColorPicker*)colorPicker changedColor:(UIColor*)color;
@end
