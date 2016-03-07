//
//  AddForumTitleViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddForumTitleViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *groupName;
@property (weak, nonatomic) IBOutlet UITextView *groupStatus;
@property (weak, nonatomic) IBOutlet UIButton *create;
@property (weak, nonatomic) IBOutlet UIButton *cancel;

@property (nonatomic) UITapGestureRecognizer *tapRecognizer;

@end
