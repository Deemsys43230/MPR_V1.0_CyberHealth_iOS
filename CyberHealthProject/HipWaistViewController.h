//
//  BloodGroupViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRSDialScrollView.h"
#import "FXBlurView.h"
#import "SCLAlertView.h"
@interface HipWaistViewController : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet FXBlurView *blurView;
@property (strong, nonatomic) IBOutlet TRSDialScrollView *hipView;
@property (strong, nonatomic) IBOutlet TRSDialScrollView *waistView;
@property (strong, nonatomic) IBOutlet UILabel *hipValue;
@property (strong, nonatomic) IBOutlet UILabel *waistValue;
@property (strong, nonatomic) SCLAlertView *alert;
@end
