//
//  GoalInfo.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MemberListVC.h"
#import "AppDelegate.h"
#import "FXBlurView.h"
#import <Social/Social.h>
#import"FXBlurView.h"
#import "SCLAlertView.h"
#define AppDelegateMacro (AppDelegate *)[[UIApplication sharedApplication] delegate]

@interface GoalInfo : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *goalImage;
@property (strong, nonatomic) IBOutlet UILabel *goalName;
@property (strong, nonatomic) IBOutlet UILabel *goalExpiresIn;
@property (strong, nonatomic) IBOutlet UILabel *groupName;
@property (strong, nonatomic) IBOutlet UILabel *createdBy;
@property (strong, nonatomic) IBOutlet UILabel *goalStartDate;
@property (strong, nonatomic) IBOutlet UILabel *goalEndDate;
@property (strong, nonatomic) IBOutlet UITextView *goaldescription;
@property (strong, nonatomic) IBOutlet UILabel *prizewonLabel;
@property (strong, nonatomic) IBOutlet UIImageView *prizeWonImage;
@property (strong, nonatomic)AppDelegate *ap;


@property (strong, nonatomic) IBOutletCollection (UIImageView) NSArray *userImages;
@property (strong, nonatomic) IBOutletCollection (UILabel) NSArray *userNames;
@property (strong, nonatomic) IBOutletCollection (UILabel) NSArray *userScores;

@property (strong, nonatomic)  NSMutableDictionary *goalDetail;

@property (strong, nonatomic) SCLAlertView *alert;
@end
