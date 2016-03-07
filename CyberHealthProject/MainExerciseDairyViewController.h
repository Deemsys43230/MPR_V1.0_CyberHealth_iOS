//
//  MainExerciseDairyViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/26/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "VRGCalendarView.h"

@interface MainExerciseDairyViewController : UIViewController<VRGCalendarViewDelegate>
{
    NSDictionary *data_for_cell,*data_for_cell1;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    NSString *btnTitle;
    NSDictionary *object;
    int calenderValue;

}

@property(nonatomic,retain)IBOutlet UITableView *tableView;
@property(nonatomic,retain)IBOutlet UIView *calenderView;

@end
