//
//  MyFoodDetailTableViewCell.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 25/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyFoodDetailTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *foodName;
@property (strong, nonatomic) IBOutlet UILabel *noOfServings;
@property (strong, nonatomic) IBOutlet UILabel *caloriesconsumed;
@property (strong, nonatomic) IBOutlet UIImageView *foodImage;
@end
