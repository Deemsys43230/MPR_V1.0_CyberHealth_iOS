//
//  MainForumViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface MainForumViewController : UIViewController
{
    NSDictionary *data_for_cell,*object;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    NSString *string,*btnTitle;
}

@property(nonatomic,retain)IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSDictionary* detailItem;
//@property(nonatomic,assign)id delegate;

//@property(nonatomic,retain) MainPageAppDelegate *delegate;

@property (strong,nonatomic) NSString *string;
-(void)setString:(NSString *)str;

@end
