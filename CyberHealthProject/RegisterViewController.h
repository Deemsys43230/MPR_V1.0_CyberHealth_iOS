//
//  RegisterViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 16/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXBlurView.h"
@interface RegisterViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet FXBlurView *blurView;
@property (strong, nonatomic) IBOutlet UITextField * fName;
@property (strong, nonatomic) IBOutlet UITextField * lName;
@property (strong, nonatomic) IBOutlet UITextField * eMailID;
@property (strong, nonatomic) IBOutlet UITextField * mobileNumber;
@end
