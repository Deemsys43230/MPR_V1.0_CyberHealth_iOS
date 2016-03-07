//
//  ChatingForumTableViewCell.h
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatingForumTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *msg;
@property (weak, nonatomic) IBOutlet UILabel *time;

@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
