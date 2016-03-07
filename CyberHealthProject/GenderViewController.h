//
//  GenderViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXBlurView.h"
@interface GenderViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *male;
@property (strong, nonatomic) IBOutlet UIButton *female;
@property (strong, nonatomic) IBOutlet UIImageView *MaleSelection;
@property (strong, nonatomic) IBOutlet UIImageView *FemaleSelection;
@property (strong, nonatomic) IBOutlet FXBlurView *blurView;

@property (strong, nonatomic)NSString *genderType;
@end
