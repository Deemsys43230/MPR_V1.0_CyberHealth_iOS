//
//  DOBViewController.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "DOBViewController.h"

@interface DOBViewController ()

@end

@implementation DOBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //FlatPicker
    self.flatDatePicker = [[FlatDatePicker alloc] initWithParentView:self.view];
    self.flatDatePicker.delegate = self;
    self.flatDatePicker.title = @"Select date of birth";
    self.flatDatePicker.datePickerMode = FlatDatePickerModeDate;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateFormat:@"yyyy"];
    NSString *year = [dateFormatter stringFromDate:[NSDate date]];
    past25years=[year integerValue]-25;
    
    self.day.text=@"01";
    self.month.text=@"01";
    self.year.text=[NSString stringWithFormat:@"%d",past25years];
    
    //BlurView
    self.blurView.blurRadius = 10;
    self.blurView.tintColor=[UIColor clearColor];
    self.blurView.dynamic = NO;
    self.blurView.contentMode = UIViewContentModeRight;
    self.blurView.layer.contentsGravity = kCAGravityBottomLeft;
    [self.blurView setClipsToBounds:YES];
    [self.blurView updateAsynchronously:YES completion:^{
        // Whatever you want
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)DOBShow:(id)sender {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateFormat:@"MM:dd:yyyy"];
    NSDate *date = [dateFormatter dateFromString:[NSString stringWithFormat:@"01:01:%d",past25years]];
    if (self.flatDatePicker.isOpen) {
        [self.flatDatePicker setDate:date animated:YES];
    } else {
        [self.flatDatePicker setDate:date animated:NO];
    }
    [self.flatDatePicker show];
    
   
}
#pragma mark - FlatDatePicker Delegate

- (void)flatDatePicker:(FlatDatePicker*)datePicker dateDidChange:(NSDate*)date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    
    if (datePicker.datePickerMode == FlatDatePickerModeDate) {
        [dateFormatter setDateFormat:@"MM:dd:yyyy"];
    } else if (datePicker.datePickerMode == FlatDatePickerModeTime) {
        [dateFormatter setDateFormat:@"HH:mm:ss"];
    } else {
        [dateFormatter setDateFormat:@"MM:dd:yyyy HH:mm:ss"];
    }
    
    NSString *value = [dateFormatter stringFromDate:date];
    NSArray *sets= [value componentsSeparatedByString:@":"];
    if([sets count]>=3)
    {
        self.month.text= sets[0];
        self.day.text= sets[1];
        self.year.text= sets[2];
        
    }
   
}

- (void)flatDatePicker:(FlatDatePicker*)datePicker didCancel:(UIButton*)sender {
  /*
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"FlatDatePicker" message:@"Did cancelled !" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alertView show];*/
}

- (void)flatDatePicker:(FlatDatePicker*)datePicker didValid:(UIButton*)sender date:(NSDate*)date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    
    if (datePicker.datePickerMode == FlatDatePickerModeDate) {
        [dateFormatter setDateFormat:@"MM:dd:yyyy"];
    } else if (datePicker.datePickerMode == FlatDatePickerModeTime) {
        [dateFormatter setDateFormat:@"HH:mm:ss"];
    } else {
        [dateFormatter setDateFormat:@"MM:dd:yyyy HH:mm:ss"];
    }
    
    NSString *value = [dateFormatter stringFromDate:date];
    
   NSArray *sets= [value componentsSeparatedByString:@":"];
   if([sets count]>=3)
   {
       self.month.text= sets[0];
       self.day.text= sets[1];
       self.year.text= sets[2];
       
   }
 
    
  
}
#pragma mark -Actions
- (IBAction)gotoNext:(id)sender {
    
}

- (void)viewDidUnload {
  
    [super viewDidUnload];
}

@end
