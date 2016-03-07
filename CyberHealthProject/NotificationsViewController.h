//
//  NotificationsViewController.h
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWTableViewCell.h"


@interface NotificationsViewController : UIViewController<SWTableViewCellDelegate>

{
    NSDictionary *data_for_cell;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    
    NSString *btnTitle,*requestStr;
    NSDictionary *object;
    
    NSMutableDictionary *commonDict;
    
    

    
}
@property(nonatomic,retain)IBOutlet UITableView *tableView;


@property(nonatomic, copy) NSArray *animationImages;

@end
