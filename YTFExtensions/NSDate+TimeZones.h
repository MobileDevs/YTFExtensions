//
//  NSDate+TimeZones.h
//  YTFExtensions
//
//  Created by Mykhaylo Merkulov on 08.02.13.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (TimeZones)

- (NSDate *)convertToCurrentTimeZone;
- (NSDate *)convertToGMTFrom:(NSTimeZone *)timeZone;

@end
