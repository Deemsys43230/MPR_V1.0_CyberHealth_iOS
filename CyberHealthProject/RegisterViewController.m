//
//  RegisterViewController.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 16/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.blurView.blurRadius = 10;
    self.blurView.tintColor=[UIColor clearColor];
    self.blurView.dynamic = NO;
    self.blurView.contentMode = UIViewContentModeRight;
    self.blurView.layer.contentsGravity = kCAGravityBottomLeft;
    [self.blurView setClipsToBounds:YES];
    [self.blurView updateAsynchronously:YES completion:^{
        // Whatever you want
    }];
   
    self.fName.delegate=self;
     self.lName.delegate=self;
     self.eMailID.delegate=self;
     self.mobileNumber.delegate=self;
    
    self.fName.tag=1;
    self.lName.tag=2;
    self.eMailID.tag=3;
    self.mobileNumber.tag=4;
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
    
    if ((textField==self.fName)||(textField==self.lName))
    {
        if ([string rangeOfCharacterFromSet:[NSCharacterSet decimalDigitCharacterSet]].location != NSNotFound)
        {
            //Restrict numbers
            return NO;
        }
        
        
    }
    
    return YES;
}
#pragma mark- Actions
- (IBAction)Register:(id)sender {
}

@end
