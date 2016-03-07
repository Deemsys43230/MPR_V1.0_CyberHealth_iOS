//
//  SelectGroupPickerCell.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 23/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "SelectGroupPickerCell.h"

@implementation SelectGroupPickerCell
@synthesize groupName;
@synthesize createdBy;
@synthesize groupStatus;
@synthesize groupImage;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
