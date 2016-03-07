//
//  GoalInfo.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "GoalInfo.h"

@interface GoalInfo ()

@end

@implementation GoalInfo
@synthesize alert;
@synthesize goalImage;
@synthesize goalName;
@synthesize goalExpiresIn;
@synthesize groupName;
@synthesize createdBy;
@synthesize goalStartDate;
@synthesize goalEndDate;
@synthesize goaldescription;
@synthesize userImages;
@synthesize userNames;
@synthesize userScores;
@synthesize goalDetail;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.ap=AppDelegateMacro;
    self.goalDetail=self.ap.selectedGoal;
     self.navigationController.topViewController.title=@"Goal Detail";
    
    goalName.text= goalDetail[@"goalName"];
    groupName.text= goalDetail[@"groupName"];
    createdBy.text=  goalDetail[@"createdby"];
    goalImage.image=[UIImage imageNamed:goalDetail[@"goalImage"]];
    goaldescription.text=goalDetail[@"goalDescription"];
    goalStartDate.text=   goalDetail[@"startDate"];
    goalEndDate.text= goalDetail[@"endDate"];
    goalExpiresIn.text= goalDetail[@"expiresin"];
    if ([goalDetail[@"goalStatus"]integerValue]==1) {
        goalExpiresIn.textColor=[UIColor greenColor];
        
    }
    else if ([goalDetail[@"goalStatus"]integerValue]==2) {
        goalExpiresIn.textColor=[UIColor cyanColor];
    }
    else if ([goalDetail[@"goalStatus"]integerValue]==3) {
       goalExpiresIn.textColor=[UIColor redColor];
    }
    int prizeWon= [goalDetail[@"prizeWon"] integerValue];
    if (prizeWon==1) {
        self.prizeWonImage.hidden=NO;
        self.prizewonLabel.hidden=NO;
    }
    else
    {
        self.prizeWonImage.hidden=YES;
        self.prizewonLabel.hidden=YES;
    }

    for (int i=0;i<3; i++) {
       // ((UILabel*)self.userNames[i]).text=[NSString stringWithFormat:@"-"];
       // ((UILabel*)self.userScores[i]).text=[NSString stringWithFormat:@"-"];
        
       UIImageView *image1 =(UIImageView*)self.userImages[i];
        image1.layer.cornerRadius = 28;
        image1.layer.masksToBounds = YES;
        image1.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
        image1.layer.borderWidth=1.0f;
        
    }
    
   
    UIImageView *image1 = goalImage;
    image1.layer.cornerRadius = 35;
    image1.layer.masksToBounds = YES;
    image1.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
    image1.layer.borderWidth=1.0f;
    goalImage.image=image1.image;
    
    UIBarButtonItem *quitChallenge=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"quitChallenge.png"] style:UIBarButtonItemStyleBordered target:self action:@selector(quitChallenge:)];
    
     UIBarButtonItem *membersList=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"membersList.png"] style:UIBarButtonItemStyleBordered target:self action:@selector(showMembersList:)];
    
    self.navigationController.topViewController.navigationItem.rightBarButtonItems=[[NSArray alloc]initWithObjects:quitChallenge,membersList,nil];
    
     UIBarButtonItem *goalShare=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(showGoalShare:)];
    
    self.navigationController.topViewController.navigationItem.leftBarButtonItem=goalShare;
  //  [self displayLabel];
    
   self.navigationController.topViewController.navigationItem.hidesBackButton=NO;
     // self.navigationItem.backBarButtonItem.title = @" ";

    self.navigationItem.leftItemsSupplementBackButton = YES;
    
}
-(void)displayLabel
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
    [goalExpiresIn setAlpha:0.0];
    [UIView setAnimationDelay:1.0f];
    [UIView commitAnimations];
}
- (void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    [goalExpiresIn setAlpha:1.0];
    [self displayLabel];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)quitChallenge:(id)sender {
    alert = [[SCLAlertView alloc] init];
    [alert addButton:@"Yes" target:self selector:@selector(cancel)];
    
    [alert alertIsDismissed:^{
       // NSLog(@"SCLAlertView dismissed!");
    }];
    
    [alert showInfo:self title:@"Info" subTitle:@"Would you like to quit this goal?" closeButtonTitle:@"No" duration:0.0f];
}
- (void)cancel
{
   // NSLog(@"First button tapped");
}
- (IBAction)showMembersList:(id)sender {
  
    
    
    UIViewController *initialVC= [self.storyboard instantiateViewControllerWithIdentifier:@"MemberListVC"];
   [self.navigationController pushViewController:initialVC animated:YES];
}
- (IBAction)showGoalShare:(id)sender {
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller setInitialText:[NSString stringWithFormat:@"My New Goal - %@",goalDetail[@"goalName"]]];
       // [controller addURL:[NSURL URLWithString:@"http://www.appcoda.com"]];
        [controller addImage:[UIImage imageNamed:goalDetail[@"goalImage"]]];
        
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
}

@end
