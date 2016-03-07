//
//  PurchasedCourseViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PurchasedCourseViewController : UIViewController

{
    NSDictionary *data_for_cell,*data_for_cell1;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    UIView *mainView;
    UITableView *tableView;
}


@property(nonatomic,retain)IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *mainView;

@property(nonatomic, copy) NSArray *animationImages;
@property (strong, nonatomic) NSDictionary* detailItem;

@property(nonatomic,assign)id delegate;


@end
