//
//  NSDictionary+NullReplacement.m
//  ElectronicHealthcareRecord
//
//  Created by DeemsysInc on 29/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "NSDictionary+NullReplacement.h"

@implementation NSDictionary(NullReplacement)


- (NSDictionary *)dictionaryByReplacingNullsWithBlanks {
    const NSMutableDictionary *replaced = [self mutableCopy];
    const id nul = [NSNull null];
    const NSString *blank = @"";
    
    for (NSString *key in self) {
        id object = [self objectForKey:key];
        if (object == nul) [replaced setObject:blank forKey:key];
        else if ([object isKindOfClass:[NSDictionary class]]) [replaced setObject:[object dictionaryByReplacingNullsWithBlanks] forKey:key];
        else if ([object isKindOfClass:[NSArray class]]) [replaced setObject:[object arrayByReplacingNullsWithBlanks] forKey:key];
    }
    return [NSDictionary dictionaryWithDictionary:[replaced copy]];
}

@end
