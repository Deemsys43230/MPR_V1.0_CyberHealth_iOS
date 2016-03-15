//
//  ViewController.h
//  CyberHealth
//
//  Created by Uday on 6/18/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#define ShowNetworkActivityIndicator() [UIApplication sharedApplication].networkActivityIndicatorVisible = YES
#define HideNetworkActivityIndicator() [UIApplication sharedApplication].networkActivityIndicatorVisible = NO

@interface MainViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *emailid;
@property (weak, nonatomic) IBOutlet UIView *logintf;
@property (strong, nonatomic) IBOutlet UITextField *password;
@end

