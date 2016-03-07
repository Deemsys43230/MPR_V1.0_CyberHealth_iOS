//
//  MemberListVC.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MemberList.h"
#import "MemberInfo.h"
#import "AppDelegate.h"
#define AppDelegateMacro (AppDelegate *)[[UIApplication sharedApplication] delegate]

@interface MemberListVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic)AppDelegate *ap;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;
@property(strong,nonatomic)NSMutableDictionary *memberDetail;
@property(strong,nonatomic)NSMutableDictionary *goalDetail;
@property (strong, nonatomic) NSMutableArray *membersList;
@property (strong, nonatomic) NSMutableArray *membersSearchList;

@end
