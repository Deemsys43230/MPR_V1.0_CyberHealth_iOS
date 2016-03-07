//
//  MainForumTableViewCell.h
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainForumTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (strong, nonatomic) IBOutlet UILabel *helloDesc;
@property (weak, nonatomic) IBOutlet UILabel *createdBy;
@property (weak, nonatomic) IBOutlet UILabel *createdOn;
@end
