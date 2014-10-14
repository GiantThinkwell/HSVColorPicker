//
//  UIColor+HexCodes.h
//  HSVColorPicker
//
//  Created by Nicholas Hart on 10/14/14.
//  Copyright (c) 2014 Nicholas Hart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexCodes)

/** Helper method to return a hex format, eg: #112233
 @return a string containing the hex format
 */
- (NSString *)formatHexCode;

@end
