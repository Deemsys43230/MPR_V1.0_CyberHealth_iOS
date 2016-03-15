//
//  ViewController.m
//  CyberHealth
//
//  Created by Uday on 6/18/15.
//  Copyright (c) 2015 deemsys. All rights reserved.

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.emailid.delegate=self;
    self.password.delegate=self;
    self.emailid.tag=1;
    self.password.tag=2;
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
- (IBAction)loginAction:(id)sender {
   
    ShowNetworkActivityIndicator();
    [self performSelector:@selector(loginVerification) withObject:self afterDelay:1.5f];
    
   
}
-(void)loginVerification
{
     HideNetworkActivityIndicator();
    HKRotationNavigationController *navMain = (HKRotationNavigationController*)[[UIStoryboard storyboardWithName:@"Dashboard" bundle:nil] instantiateViewControllerWithIdentifier: @"HKMainNavController"];
    [AppDelegate mainDelegate].slideMenuVC.mainViewController = navMain;
    [UIApplication sharedApplication].delegate.window.rootViewController = [AppDelegate mainDelegate].slideMenuVC;
    [[UIApplication sharedApplication].delegate.window makeKeyAndVisible];
   
    
}
- (IBAction)goToGuestUser:(id)sender {
 HideNetworkActivityIndicator();
}



- (IBAction)goToUserRegister:(id)sender {
   HideNetworkActivityIndicator();
    UIViewController *initialvc=[[UIStoryboard storyboardWithName:@"Register" bundle:nil] instantiateViewControllerWithIdentifier:@"RegisterBasicDetails"];
//      UINavigationController *rootVC=[[UINavigationController alloc]initWithRootViewController:initialvc];
//    [self presentViewController:rootVC animated:YES completion:nil];
    [self.navigationController pushViewController:initialvc animated:YES];
    
    
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
//-(BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//        
//    [textField resignFirstResponder];
//    return NO;
//}
- (IBAction)goToUserForgotPassword:(id)sender {
    
    UIViewController *initialvc=[self.storyboard instantiateViewControllerWithIdentifier:@"UserForgotPassword"];
    [self.navigationController pushViewController:initialvc animated:YES];
    
    
}
@end