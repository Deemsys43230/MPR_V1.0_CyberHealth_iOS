//
//  CreateGroupsTableViewCell.h
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateGroupsTableViewCell : UITableViewCell



@property (weak, nonatomic) IBOutlet UIImageView *groupImage;
@property (weak, nonatomic) IBOutlet UILabel *groupName;
@property (weak, nonatomic) IBOutlet UILabel *createdBy;
@property (weak, nonatomic) IBOutlet UILabel *status;

@end
