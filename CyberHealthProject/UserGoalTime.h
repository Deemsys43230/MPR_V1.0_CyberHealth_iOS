//
//  UserGoalTime.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 23/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlatDatePicker.h"
@interface UserGoalTime : UIViewController<FlatDatePickerDelegate>
@property (strong, nonatomic) IBOutlet UILabel *startYear;
@property (strong, nonatomic) IBOutlet UILabel *startday;
@property (strong, nonatomic) IBOutlet UILabel *startMonth;
@property (strong, nonatomic) IBOutlet UILabel *endYear;
@property (strong, nonatomic) IBOutlet UILabel *endday;
@property (strong, nonatomic) IBOutlet UILabel *endMonth;
@property (nonatomic, strong) FlatDatePicker *flatDatePicker;
@property (nonatomic, strong)IBOutlet UIView *subViews;
@end
