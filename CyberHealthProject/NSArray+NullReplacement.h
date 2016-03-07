//
//  NSArray+NullReplacement.h
//  ElectronicHealthcareRecord
//
//  Created by DeemsysInc on 29/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+NullReplacement.h"
@interface NSArray (NullReplacement)
- (NSArray *)arrayByReplacingNullsWithBlanks;

@end
