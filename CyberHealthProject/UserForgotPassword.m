//
//  UserForgotPassword.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 20/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "UserForgotPassword.h"

@interface UserForgotPassword ()

@end

@implementation UserForgotPassword

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.topViewController.title=@"Forgot Password";
    self.blurView.blurRadius = 10;
    self.blurView.tintColor=[UIColor clearColor];
    self.blurView.dynamic = NO;
    self.blurView.contentMode = UIViewContentModeRight;
    self.blurView.layer.contentsGravity = kCAGravityBottomLeft;
    [self.blurView setClipsToBounds:YES];
    [self.blurView updateAsynchronously:YES completion:^{
        // Whatever you want
    }];

    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapAnywhere:)];
    [self.view addGestureRecognizer:tapRecognizer];
}

- (void)didTapAnywhere:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated
{
    
    
}
#pragma mark-delegates
-(BOOL)textFieldShouldReturn:(UITextField*)textField
{
    NSInteger nextTag = textField.tag + 1;
    // Try to find next responder
    UIResponder* nextResponder = [self.view viewWithTag:nextTag];
    if (nextResponder) {
        // Found next responder, so set it.
        [nextResponder becomeFirstResponder];
    } else {
        // Not found, so remove keyboard.
        [textField resignFirstResponder];
    }
    return NO; // We do not want UITextField to insert line-breaks.
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(![string isEqualToString:@""])
    {
        
        NSCharacterSet *rangeOfCharacters = [NSCharacterSet characterSetWithCharactersInString:@" "];
        if (range.location == 0 && [rangeOfCharacters characterIsMember:[string characterAtIndex:0]] )
        {
            //Restrict whitespace
            return NO;
        }
        
    }
    
    else if(![string isEqualToString:@""])
    {
        NSCharacterSet *rangeOfCharacters = [NSCharacterSet characterSetWithCharactersInString:@"\n"];
        if (range.location == 0 && [rangeOfCharacters characterIsMember:[string characterAtIndex:0]] )
        {
            //Restrict whitespace
            return NO;
        }
    }
    
    
    
    return YES;
}
- (IBAction)sendEmail:(id)sender {
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    
    // alert.backgroundType = Blur;
    [alert setShowAnimationType:SlideInFromLeft];
    [alert setHideAnimationType:SlideOutToBottom];
    alert.backgroundType = Blur;
    
    [alert showWaiting:self title:@"Please wait..."
              subTitle:@""
      closeButtonTitle:nil duration:3.0f];
    [alert alertIsDismissed:^{
       
        [self performSelector:@selector(dismiss) withObject:self afterDelay:0.2f];
        
    }];
    
}
-(void)dismiss{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
