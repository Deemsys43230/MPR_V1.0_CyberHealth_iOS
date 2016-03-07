//
//  EveningSnacksViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 25/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyFoodListViewController.h"
@interface MyFoodDetailViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (strong, nonatomic)  NSMutableDictionary *foodDetail;
@property (strong, nonatomic) IBOutlet UIImageView *foodImage;
@property (strong, nonatomic) IBOutlet UILabel *foodName;
@property (strong, nonatomic) IBOutlet UIPickerView *foodServings;
@property (strong, nonatomic)  NSMutableArray *pickerData;
@property (strong, nonatomic) IBOutlet UILabel *foodServingsValue;
@end
