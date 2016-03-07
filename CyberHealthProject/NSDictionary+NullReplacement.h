//
//  NSDictionary+NullReplacement.h
//  ElectronicHealthcareRecord
//
//  Created by DeemsysInc on 29/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+NullReplacement.h"
@interface NSDictionary (NullReplacement)
- (NSDictionary *)dictionaryByReplacingNullsWithBlanks;
@end
