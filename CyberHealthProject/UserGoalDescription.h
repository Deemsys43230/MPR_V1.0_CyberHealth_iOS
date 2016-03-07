//
//  UserGoalDescription.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 23/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserGoalList.h"
@interface UserGoalDescription : UIViewController<UITextViewDelegate>
@property (strong, nonatomic) IBOutlet UITextView *goalDescription;
@property (strong, nonatomic) IBOutlet UISegmentedControl *goalType;

@end
