//
//  AddNewGoal.h
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddNewGoal : UIViewController<UIImagePickerControllerDelegate,UIActionSheetDelegate,UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextField *goalName;
@property (strong, nonatomic) IBOutlet UIView *textHoldview;
@property (strong, nonatomic) IBOutlet UIButton *addImageButton;
@property (strong, nonatomic) IBOutlet UIImageView *addImage;
@property (strong, nonatomic) UIImagePickerController *pickerController;

@end
