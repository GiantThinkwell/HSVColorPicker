//
//  UIColor+HexCodes.m
//  HSVColorPicker
//
//  Created by Nicholas Hart on 10/14/14.
//  Copyright (c) 2014 Nicholas Hart. All rights reserved.
//

#import "UIColor+HexCodes.h"

#define FLOAT_TO_UINT16(value) ((uint16_t)roundf(value * 255.0))

@implementation UIColor (HexCodes)

- (NSString *)formatHexCode {
    CGFloat red, green, blue, alpha;
    if ([self getRed:&red green:&green blue:&blue alpha:&alpha]) {
        return [NSString stringWithFormat:@"#%02X%02X%02X", FLOAT_TO_UINT16(red), FLOAT_TO_UINT16(green), FLOAT_TO_UINT16(blue)];
    }
    return nil;
}

@end
