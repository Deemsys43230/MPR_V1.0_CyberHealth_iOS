//
//  HeightViewController.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRSDialScrollView.h"
#import "FXBlurView.h"
@interface HeightViewController : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet TRSDialScrollView *heightView;
@property (strong, nonatomic) IBOutlet TRSDialScrollView *weightView;
@property (strong, nonatomic) IBOutlet UILabel *heightValue;
@property (strong, nonatomic) IBOutlet UILabel *weightValue;
@property (strong, nonatomic) IBOutlet FXBlurView *blurView;

@end
