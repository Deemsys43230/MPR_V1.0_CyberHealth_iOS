//
//  AddFriendViewController.h
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddFriendViewController : UIViewController

{
    NSDictionary *data_for_cell;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    
    
    
}
@property(nonatomic,retain)IBOutlet UITableView *tableView;

@property(nonatomic, copy) NSArray *animationImages;

@end
