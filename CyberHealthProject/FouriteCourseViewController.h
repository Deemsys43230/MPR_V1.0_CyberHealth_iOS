//
//  FouriteCourseViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FouriteCourseViewController : UIViewController

{
    NSDictionary *data_for_cell,*data_for_cell1;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    NSString *btnTitle;
    NSDictionary *object;
    
}


@property(nonatomic,retain)IBOutlet UITableView *tableView;

@property(nonatomic, copy) NSArray *animationImages;
@property (strong, nonatomic) NSDictionary* detailItem;

@property(nonatomic,assign)id delegate;

@end
