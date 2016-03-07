//
//  DetailGroupTableViewCell.h
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailGroupTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *profileImg;
@property (weak, nonatomic) IBOutlet UILabel *FriendName;
@property (weak, nonatomic) IBOutlet UILabel *MutualFriends;
@property (weak, nonatomic) IBOutlet UILabel *dob;
@property (weak, nonatomic) IBOutlet UILabel *lives;

@end
