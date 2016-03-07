//
//  UserGoalCell.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "UserGoalCell.h"

@implementation UserGoalCell
@synthesize goalName;
@synthesize groupName;
@synthesize createdBy;
@synthesize expiresIn;
@synthesize goalImage;
@synthesize prizeImage;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
