//
//  DetailExerciseViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/26/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailExerciseViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *exerciseName;
@property (weak, nonatomic) IBOutlet UIButton *hoursBtn;

@property (weak, nonatomic) IBOutlet UIDatePicker *timePicker;
@property (weak, nonatomic) IBOutlet UIView *boderView;
@property (nonatomic) UITapGestureRecognizer *tapRecognizer;

@end
