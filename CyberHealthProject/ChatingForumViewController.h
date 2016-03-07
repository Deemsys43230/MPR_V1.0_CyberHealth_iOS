//
//  ChatingForumViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatingForumTableViewCell.h"
#define AppDelegate (MainPageAppDelegate *)[[UIApplication sharedApplication] delegate]

@interface ChatingForumViewController : UIViewController<UITextViewDelegate>
{
    NSDictionary *data_for_cell;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;
    NSString *cellValues;
    bool keyboardIsShowing;
    float hi;
 //   int selectedIndex;
    ChatingForumTableViewCell *cell;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UIView *sendView;
@property (strong, nonatomic) IBOutlet UIButton *sendBtn;
@property (strong, nonatomic) IBOutlet UITextView *sendText;
@property (strong, nonatomic) IBOutlet UIView *mainView;

@property (nonatomic) UITapGestureRecognizer *tapRecognizer;

//@property(nonatomic,retain) MainPageAppDelegate *delegate;


@end
