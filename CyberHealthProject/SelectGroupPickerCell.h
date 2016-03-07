//
//  SelectGroupPickerCell.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 23/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectGroupPickerCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *groupName;
@property (strong, nonatomic) IBOutlet UILabel *createdBy;
@property (strong, nonatomic) IBOutlet UILabel *groupStatus;
@property (strong, nonatomic) IBOutlet UIImageView *groupImage;
@end
