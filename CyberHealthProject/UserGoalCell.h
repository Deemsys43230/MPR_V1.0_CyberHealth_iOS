//
//  UserGoalCell.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserGoalCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *goalName;
@property (strong, nonatomic) IBOutlet UILabel *groupName;
@property (strong, nonatomic) IBOutlet UILabel *createdBy;
@property (strong, nonatomic) IBOutlet UILabel *expiresIn;
@property (strong, nonatomic) IBOutlet UIImageView * goalImage;
@property (strong, nonatomic) IBOutlet UIImageView * prizeImage;
@end
