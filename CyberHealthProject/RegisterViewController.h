//
//  RegisterViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 16/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField * name;
@property (strong, nonatomic) IBOutlet UITextField * emailid;
@property (strong, nonatomic) IBOutlet UITextField * pwd;
@property (strong, nonatomic) IBOutlet UITextField * cpwd;
@end
