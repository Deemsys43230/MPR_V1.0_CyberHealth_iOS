//
//  ForumMainDetailViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForumMainDetailViewController : UIViewController
{

    NSString *string;
    UIStoryboard *storyboard;
}
@property (strong, nonatomic) NSDictionary* detailItem;
@property(nonatomic,assign)id delegate;
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;


@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIView *containerView2;

@property (weak, nonatomic) IBOutlet UILabel *titleLab;

@end
