//
//  NSDictionary+URLParametrs.m
//  NETA
//
//  Created by Tukhatorv Vladislav on 10/8/10.
//  Copyright 2010 NIX. All rights reserved.
//

#import "NSDictionary+URLParametrs.h"


@implementation NSDictionary (URLParametrs)


- (NSData *) postParametrs {
    
    NSMutableArray * postParametrs = [NSMutableArray array];
    
    for ( NSString * key in self ) {
        
        id  value = [self valueForKey: key];
        
        if ( [[value description] length] > 0 ) {
            
            [postParametrs addObject: [NSString stringWithFormat:@"%@=%@", key, [value description] ] ];
        }       
    }
    
    return [[postParametrs componentsJoinedByString:@"&"] dataUsingEncoding: NSUTF8StringEncoding];
}


// helper function: get the string form of any object
static NSString *toString(id object) {
    return [NSString stringWithFormat: @"%@", object];
}

// helper function: get the url encoded string form of any object
static NSString *urlEncode(id object) {
    NSString *string = toString(object);
    return [string stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
}



-(NSString*) urlEncodedString {
    
    NSMutableArray *parts = [NSMutableArray array];
    for (id key in self) {
        id value = [self objectForKey: key];
        if ([(NSString *)key hasPrefix:@"[NONE]"]) {
            [parts addObject: value];
        } else {
            NSString *part = [NSString stringWithFormat: @"%@=%@", urlEncode(key), value];
            [parts addObject: part];
        }
    }
    return [parts componentsJoinedByString: @"&"];
}

@end
