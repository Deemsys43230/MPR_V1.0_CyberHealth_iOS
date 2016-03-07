//
//  MemberInfo.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "caloriesTrackList.h"
#import "AppDelegate.h"
#import <MessageUI/MessageUI.h>
#import"FXBlurView.h"
#define AppDelegateMacro (AppDelegate *)[[UIApplication sharedApplication] delegate]
@interface MemberInfo : UIViewController<UITableViewDataSource,UITableViewDataSource,MFMailComposeViewControllerDelegate>

@property (strong, nonatomic)AppDelegate *ap;
@property(nonatomic,retain)NSMutableDictionary *memberDetail;
@property(nonatomic,retain)NSMutableDictionary *goalDetail;
@property(nonatomic,retain) IBOutlet UIImageView *userImage;
@property (strong, nonatomic) IBOutlet UILabel *userName;
@property (strong, nonatomic) IBOutlet UILabel *usrePlace;
@property (strong, nonatomic) IBOutlet FXBlurView *bannerBlurView;

@property (strong, nonatomic) IBOutlet UITableView *trackListTV;

@property(nonatomic,retain)NSMutableArray *trackList;
@property(nonatomic,retain)NSMutableDictionary *trackDeatil;
@property (strong, nonatomic) IBOutlet UILabel *caloriesBurnt;

@property (strong, nonatomic) IBOutlet UIImageView *call;
@property (strong, nonatomic) IBOutlet UIImageView *mail;
@property (strong, nonatomic) IBOutlet UILabel *position;
@property (strong, nonatomic) IBOutlet UISegmentedControl *caloriesListSeg;

@end
