//
//  UserGoalDescription.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 23/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "UserGoalDescription.h"

@interface UserGoalDescription ()

@end

@implementation UserGoalDescription

- (void)viewDidLoad {
    [super viewDidLoad];
  self.navigationController.topViewController.navigationItem.title=@"Create Goal";
    [[self.goalDescription layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[self.goalDescription layer] setBorderWidth:1];
    [[self.goalDescription layer] setCornerRadius:10];
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
- (IBAction)createGoal:(id)sender {
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    
    // alert.backgroundType = Blur;
    [alert setShowAnimationType:SlideInFromLeft];
    [alert setHideAnimationType:SlideOutToBottom];
    alert.backgroundType = Blur;
    
    [alert showWaiting:self title:@"Please wait..."
              subTitle:@""
      closeButtonTitle:nil duration:5.0f];
    [alert alertIsDismissed:^{
        [self performSelector:@selector(dismiss) withObject:self afterDelay:0.2f];
        
    }];
}
-(void)dismiss{
    for (UIViewController *v in self.navigationController.viewControllers) {
        if ([v isKindOfClass:[UserGoalList class]]) {
           [self.navigationController popToViewController:v animated:YES];
            break;
        }
    }
   
}
- (IBAction)goalTypeAction:(id)sender {
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    
    
    if(![text isEqualToString:@""])
    {
        NSCharacterSet *rangeOfCharacters = [NSCharacterSet characterSetWithCharactersInString:@" \n"];
        if (range.location == 0 && [rangeOfCharacters characterIsMember:[text characterAtIndex:0]] )
        {
            //Restrict whitespace
            return NO;
        }
    }
    
    return YES;
    
}

@end
