//
//  userGroupPicker.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 23/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SelectGroupPickerCell.h"
@interface userGroupPicker : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *userGroupList;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;
@property(strong,nonatomic)NSMutableDictionary *groupDetail;
@property (strong, nonatomic) NSMutableArray *groupsList;
@property (strong, nonatomic) NSMutableArray *groupsSearchList;
@end
