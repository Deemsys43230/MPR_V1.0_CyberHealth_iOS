//
//  InviteFriendsViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/23/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWTableViewCell.h"

@interface InviteFriendsViewController : UIViewController<SWTableViewCellDelegate>
{
    NSDictionary *data_for_cell;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    
    NSString *btnTitle,*requestStr,*btnStr;
    NSDictionary *object;
    
    NSMutableDictionary *commonDict;
    
    
    NSMutableArray *filteredContentList;
    BOOL isSearching;
    

    
}
@property(nonatomic,retain)IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;


@property(nonatomic, copy) NSArray *animationImages;

@end
