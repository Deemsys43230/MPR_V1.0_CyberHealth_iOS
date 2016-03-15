//
//  UserPassSecretQuestion.m
//  CyberHealths
//
//  Created by DeemsysInc on 14/03/16.
//  Copyright (c) 2016 deemsys. All rights reserved.
//

#import "UserPassSecretQuestion.h"

@interface UserPassSecretQuestion ()

@end

@implementation UserPassSecretQuestion

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)submitPassword:(id)sender {
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
