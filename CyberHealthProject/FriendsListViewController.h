//
//  FriendsListViewController.h
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface FriendsListViewController : UIViewController

{
    NSDictionary *data_for_cell,*data_for_cell1;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;



}
@property(nonatomic,retain)IBOutlet UITableView *tableView;

@property(nonatomic, copy) NSArray *animationImages;
@property (strong, nonatomic) NSDictionary* detailItem;

@property(nonatomic,assign)id delegate;


@end
