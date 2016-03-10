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
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginAction:(id)sender {
    NSLog(@"Method called");
   
  
 
//    [self.navigationController presentViewController:self.slideMenuVC animated:YES completion:nil];
   HKRotationNavigationController *navMain = (HKRotationNavigationController*)[[UIStoryboard storyboardWithName:@"Dashboard" bundle:nil] instantiateViewControllerWithIdentifier: @"HKMainNavController"];
     [AppDelegate mainDelegate].slideMenuVC.mainViewController = navMain;
    [UIApplication sharedApplication].delegate.window.rootViewController = [AppDelegate mainDelegate].slideMenuVC;
    [   [UIApplication sharedApplication].delegate.window makeKeyAndVisible];
//  [[UIApplication sharedApplication].keyWindow setRootViewController:[AppDelegate mainDelegate].slideMenuVC];
}
- (IBAction)goToGuestUser:(id)sender {

}



- (IBAction)goToUserRegister:(id)sender {
  
    UIViewController *initialvc=[[UIStoryboard storyboardWithName:@"Register" bundle:nil] instantiateViewControllerWithIdentifier:@"RegisterBasicDetails"];
//      UINavigationController *rootVC=[[UINavigationController alloc]initWithRootViewController:initialvc];
//    [self presentViewController:rootVC animated:YES completion:nil];
    [self.navigationController pushViewController:initialvc animated:YES];
    
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
        
    [textField resignFirstResponder];
    return NO;
}
- (IBAction)goToUserForgotPassword:(id)sender {
    
    UIViewController *initialvc=[self.storyboard instantiateViewControllerWithIdentifier:@"UserForgotPassword"];
    [self.navigationController pushViewController:initialvc animated:YES];
    
    
}
@end