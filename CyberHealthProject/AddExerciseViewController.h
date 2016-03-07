//
//  AddExerciseViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/26/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddExerciseViewController : UIViewController
{
    NSDictionary *data_for_cell,*data_for_cell1;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    int selectedIndex,lastIndexPath;
    
    NSMutableArray *filteredContentList;
    BOOL isSearching;
}

@property(nonatomic,retain)IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;



@end
