//
//  FoodConsumedList.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 25/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodConsumedList : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *titleName;
@property (strong, nonatomic) IBOutlet UILabel *grams;
@property (strong, nonatomic) IBOutlet UILabel *calories;
@property (strong, nonatomic) IBOutlet UIImageView *foodImage;
@end
