//
//  FouriteCourseTableViewCell.h
//  Cyber Health Care
//
//  Created by deemsys on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FouriteCourseTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *courseImage;
@property (strong, nonatomic) IBOutlet UILabel *courseName;
@property (strong, nonatomic) IBOutlet UILabel *authorName;
@property (strong, nonatomic) IBOutlet UILabel *desc;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UILabel *downloads;
@property (strong, nonatomic) IBOutlet UILabel *category;

@end
