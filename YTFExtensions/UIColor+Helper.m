//
//  UIColorHelper.m
//  Enormego Cocoa Helpers
//
//  Created by Shaun Harrison on 11/20/08.
//  Copyright (c) 2008-2009 enormego
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#if TARGET_OS_IPHONE
#import "UIColor+Helper.h"

UIColor* UIColorMakeRGB(CGFloat red, CGFloat green, CGFloat blue) {
	return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0f];
}

@implementation UIColor (Helper)

+ (UIColor*) colorWithIntARGB: (int) value
{
    return [UIColor colorWithRed: ((value >> 16)& 0xFF) / 255.0f green: ((value >> 8) & 0xFF) / 255.0f blue: ((value >> 0) & 0xFF) / 255.0f alpha: ((value >> 24) & 0xFF) / 255.0f];
}

- (NSString *) hexHtmlString {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
    
    if ([self respondsToSelector:@selector(getRed:green:blue:alpha:)]) {
        [self getRed:&red green:&green blue:&blue alpha:&alpha];
        return [UIColor hexHtmlStringFrom:red green:green blue:blue alpha:alpha];
    } else {
        const CGFloat *components = CGColorGetComponents(self.CGColor);
        red = components[0];
        green = components[1];
        blue = components[2];
        alpha = components[3];
        
        return [UIColor hexHtmlStringFrom:red green:green blue:blue];
    }
    
    return @"#FFFFFF";

}

+ (NSString *) hexHtmlStringFrom:(float)red green:(float)green blue:(float) blue {
    return [NSString stringWithFormat:@"#%02X%02X%02X", (int)(red*255.0), (int)(green*255.0), (int)(blue*255.0)];
}

+ (NSString *) hexHtmlStringFrom:(float)red green:(float)green blue:(float) blue alpha:(float)alpha{
    return [NSString stringWithFormat:@"#%02X%02X%02X%02X", (int)(red*255.0), (int)(green*255.0), (int)(blue*255.0),(int)(alpha*255.0)];
}

@end
#endif