//
//  DOBViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlatDatePicker.h"
#import "FXBlurView.h"
@interface DOBViewController : UIViewController<FlatDatePickerDelegate>
{
    int past25years;
}
@property (strong, nonatomic) IBOutlet UILabel *year;
@property (strong, nonatomic) IBOutlet UILabel *day;

@property (strong, nonatomic) IBOutlet UILabel *month;
@property (strong, nonatomic) IBOutlet FXBlurView *blurView;

@property (nonatomic, strong) FlatDatePicker *flatDatePicker;
@end
