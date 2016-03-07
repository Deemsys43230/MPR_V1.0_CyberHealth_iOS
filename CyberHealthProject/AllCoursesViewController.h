//
//  AllCoursesViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/20/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface AllCoursesViewController : UIViewController<UISearchBarDelegate>


{
    NSDictionary *data_for_cell,*data_for_cell1;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    
    NSMutableArray *dataSource;
    NSMutableArray *filteredContentList;
    BOOL isSearching;



    
}

@property(nonatomic,retain)IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property(nonatomic, copy) NSArray *animationImages;
@property (strong, nonatomic) NSDictionary* detailItem;
@property(nonatomic,retain)NSMutableArray *dataSource;
@property(nonatomic,assign)id delegate;


@end
