//
//  AllCoursesTableViewCell.h
//  Cyber Health Care
//
//  Created by deemsys on 6/20/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllCoursesTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *courseImage;
@property (weak, nonatomic) IBOutlet UILabel *courseName;
@property (weak, nonatomic) IBOutlet UILabel *authorName;
@property (weak, nonatomic) IBOutlet UILabel *desc;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *downloads;
@property (weak, nonatomic) IBOutlet UILabel *category;
@end
