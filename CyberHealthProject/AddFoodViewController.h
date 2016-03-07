//
//  DinnerViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 25/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyFoodDetailTableViewCell.h"
#import "MyFoodDetailViewController.h"

@interface AddFoodViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *foodItemList;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;
@property(strong,nonatomic)NSMutableDictionary *foodDetail;
@property (strong, nonatomic) NSMutableArray *foodsList;
@property (strong, nonatomic) NSMutableArray *foodsSearchList;

@end
