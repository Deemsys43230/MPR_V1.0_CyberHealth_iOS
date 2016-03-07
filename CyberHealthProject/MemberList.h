//
//  MemberList.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MemberList : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *positionNumber;
@property (strong, nonatomic) IBOutlet UILabel *MemberName;
@property (strong, nonatomic) IBOutlet UILabel *points;
@property (strong, nonatomic) IBOutlet UILabel *position;
@property (strong, nonatomic) IBOutlet UIImageView *MemberImage;

@end
