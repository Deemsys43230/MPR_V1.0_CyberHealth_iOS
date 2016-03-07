//
//  FriendsProfileViewController.h
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendsProfileViewController : UIViewController

{

    NSDictionary *data_for_cell;
    NSMutableArray *listArray;
    NSMutableDictionary *listDict;


}
@property (weak, nonatomic) IBOutlet UIImageView *proImage;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (nonatomic) UITapGestureRecognizer *tapRecognizer;


@property (weak, nonatomic) IBOutlet UIImageView *scrollImage1;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage2;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage3;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage4;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage5;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage6;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage7;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage8;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage9;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage10;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage11;
@property (weak, nonatomic) IBOutlet UIImageView *scrollImage12;



@property(nonatomic,retain)IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSDictionary* detailItem;

@property(nonatomic,assign)id delegate;


@end
