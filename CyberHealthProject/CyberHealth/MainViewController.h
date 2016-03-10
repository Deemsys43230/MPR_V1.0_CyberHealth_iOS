//
//  ViewController.h
//  CyberHealth
//
//  Created by Uday on 6/18/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface MainViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *emailid;
@property (strong, nonatomic) IBOutlet UITextField *password;
@end

