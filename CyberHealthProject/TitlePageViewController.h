//
//  TitlePageViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/26/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

#define AppDelegate (MainPageAppDelegate *)[[UIApplication sharedApplication] delegate]

@interface TitlePageViewController : UIViewController
{
    
    int hide;
    
}
@property (weak, nonatomic) IBOutlet UIButton *titleBtn;
@property (weak, nonatomic) IBOutlet UIButton *closeBtn;


@property (weak, nonatomic) IBOutlet UIView *topView;
//@property(nonatomic,retain) MainPageAppDelegate *delegate;
@property (weak, nonatomic) IBOutlet UILabel *desc;

@end
