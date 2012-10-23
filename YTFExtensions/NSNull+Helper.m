//
//  NSNullExtension.m
//  IDS.iPadPatientChart
//
//  Created by Vlad Tsepelev on 1/4/11.
//  Copyright 2011 __CustomerCompanyName__. All rights reserved.
//

#import "NSNull+Helper.h"

@implementation NSNull (Helper)

- (int) intValue
{
	return 0;	
}

- (float) floatValue
{
	return 0.0f;
}

- (bool) boolValue
{
	return false;
}

- (NSString*) stringValue
{
	return nil;
}

- (NSObject*) objectForKey: (NSString*) key
{
	return nil;
}

- (int) count
{
	return 0;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)stackbuf count:(NSUInteger)len
{
	return 0;
}

@end

@implementation NSString (Extension)

- (NSString*) stringValue
{
	return self;
}

@end
