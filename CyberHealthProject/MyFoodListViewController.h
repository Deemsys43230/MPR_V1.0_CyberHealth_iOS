//
//  MyFoodListViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 24/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodConsumedList.h"
#import "MyFoodDetailViewController.h"
#import "VRGCalendarView.h"
#import "NSDate+convenience.h"
@interface MyFoodListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,VRGCalendarViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *foodConsumedTableView;
@property (retain, nonatomic)  NSMutableArray      *sectionTitleArray;
@property (retain, nonatomic) NSMutableDictionary *sectionContentDict;
@property (retain, nonatomic) NSMutableArray      *arrayForBool;
@property (strong, nonatomic) IBOutlet UIView *calendarView;
@property (strong, nonatomic)NSDate *selectedDate;
@end
