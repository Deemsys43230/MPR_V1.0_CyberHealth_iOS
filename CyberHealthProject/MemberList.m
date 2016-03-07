//
//  MemberList.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "MemberList.h"

@implementation MemberList
@synthesize positionNumber;
@synthesize MemberName;
@synthesize points;
@synthesize MemberImage;
@synthesize position;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
