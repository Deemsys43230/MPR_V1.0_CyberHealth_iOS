//
//  UserGoalList.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserGoalCell.h"
#import "AsyncImageDownloader.h"
#import "GoalInfo.h"
#import "AppDelegate.h"
#import "SharedMethods.h"
#define AppDelegateMacro (AppDelegate *)[[UIApplication sharedApplication] delegate]
@interface UserGoalList : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    SharedMethods *SM;
}
@property(strong,nonatomic)NSMutableDictionary *goalDetail;
@property (strong, nonatomic) NSMutableArray *goalsList;
@property (strong, nonatomic) NSMutableArray *goalsSearchList;
@property (strong, nonatomic) IBOutlet UITableView *goalListTableView;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;
@property (strong, nonatomic)AppDelegate *ap;
@end
