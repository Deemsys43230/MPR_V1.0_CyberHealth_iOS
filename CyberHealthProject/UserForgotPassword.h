//
//  UserForgotPassword.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 20/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXBlurView.h"
#import "SCLAlertView.h"
@interface UserForgotPassword : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *emailId;
@property (strong, nonatomic) IBOutlet FXBlurView *blurView;

@end
