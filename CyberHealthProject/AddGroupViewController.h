//
//  AddGroupViewController.h
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddGroupViewController : UIViewController

{
    NSMutableDictionary *object;
}

@property (weak, nonatomic) IBOutlet UITextField *groupName;
@property (weak, nonatomic) IBOutlet UITextView *groupStatus;
@property (weak, nonatomic) IBOutlet UIButton *create;
@property (weak, nonatomic) IBOutlet UIButton *cancel;

@property (nonatomic) UITapGestureRecognizer *tapRecognizer;

@end
