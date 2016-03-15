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
     
    self.name.delegate=self;
     self.emailid.delegate=self;
     self.pwd.delegate=self;
     self.cpwd.delegate=self;
    
    self.name.tag=1;
    self.emailid.tag=2;
    self.pwd.tag=3;
    self.cpwd.tag=4;

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
    
    if (textField==self.name)
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
- (IBAction)proceed:(id)sender {
    [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"Register2"] animated:YES];
}

@end
