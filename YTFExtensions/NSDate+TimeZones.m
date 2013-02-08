//
//  NSDate+TimeZones.m
//  YTFExtensions
//
//  Created by Mykhaylo Merkulov on 08.02.13.
//
//

#import "NSDate+TimeZones.h"

@implementation NSDate (TimeZones)

- (NSDate *)convertToCurrentTimeZone
{
    NSTimeInterval timeZoneOffset = [[NSTimeZone defaultTimeZone] secondsFromGMT];
    return [self dateByAddingTimeInterval:timeZoneOffset];
}

- (NSDate *)convertToGMTFrom:(NSTimeZone *)timeZone
{
    NSTimeInterval timeZoneOffset = [timeZone secondsFromGMT];
    return [self dateByAddingTimeInterval:-timeZoneOffset];
}


@end
