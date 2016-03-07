//
//  Dashboard.m
//  CyberHealth
//
//  Created by DeemsysInc on 26/06/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "Dashboard.h"

@interface Dashboard ()

@end

@implementation Dashboard



- (IBAction)menuAction:(id)sender {
    [[AppDelegate mainDelegate].slideMenuVC toggleMenu];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter]removeObserver:self  name:@"ChangeStoryBoard" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeStoryBoard:) name:@"ChangeStoryBoard" object:nil];
}
-(void)changeStoryBoard:(NSNotification *) notification
{
    NSString *userInfo = notification.object;
    NSLog(@"user info %@",userInfo);
    if ([userInfo length]>0) {
        UIStoryboard *story1=[UIStoryboard storyboardWithName:userInfo bundle:nil];
        UIViewController *VC1=[story1 instantiateInitialViewController];
        [self.navigationController pushViewController:VC1 animated:YES];
    }
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //initData
  
    NSLog(@"view will appear called");
}

- (void)viewDidAppear:(BOOL)animated{
    //initializeArrays is the function that initializes the arrays
    [super viewDidAppear:animated];

        NSLog(@"view did appear called");

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logout:(id)sender {
    [UIApplication sharedApplication].keyWindow.rootViewController=nil;
    UIViewController *loginVC=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
    [[UIApplication sharedApplication].keyWindow setRootViewController:loginVC];
}


- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}

- (BOOL)shouldAutorotate {
    return YES;
}
-(void)dealloc
{
       [[NSNotificationCenter defaultCenter]removeObserver:self  name:@"ChangeStoryBoard" object:self];
}
@end
