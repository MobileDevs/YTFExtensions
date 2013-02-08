//
//  NSDictionary+URLParametrs.h
//  NETA
//
//  Created by Tukhatorv Vladislav on 10/8/10.
//  Copyright 2010 NIX. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDictionary (URLParametrs)

- (NSData *) postParametrs;

- (NSString*) urlEncodedString;

@end
