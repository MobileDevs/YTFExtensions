//
//  NSNullExtension.h
//  IDS.iPadPatientChart
//
//  Created by Vlad Tsepelev on 1/4/11.
//  Copyright 2011 __CustomerCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * Define to check if the object is not nil and is not equal to NSNull
 * Example:
 *     id obj = [json valueForKeyPath:....];
 *     if (IS_NOTNIL_NOTNULL(obj)) {
 *     ... }
 */
#define IS_NOTNIL_NOTNULL(x) x != nil && (NSNull *)x != [NSNull null]

