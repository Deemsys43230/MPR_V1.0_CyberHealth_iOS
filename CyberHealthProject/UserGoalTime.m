//
//  UserGoalTime.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 23/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "UserGoalTime.h"

@interface UserGoalTime ()

@end

@implementation UserGoalTime

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.topViewController.navigationItem.title=@"Choose Goal Date";
    self.flatDatePicker = [[FlatDatePicker alloc] initWithParentView:self.parentViewController.view];
    self.flatDatePicker.delegate = self;
    self.flatDatePicker.title = @"Select Start Date";
    self.flatDatePicker.datePickerMode = FlatDatePickerModeDate;
     self.flatDatePicker.tag=1;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateFormat:@"MM:dd:yyyy"];
    NSDate *date = [NSDate date];
    NSString *value = [dateFormatter stringFromDate:date];
    NSArray *sets= [value componentsSeparatedByString:@":"];
    if([sets count]>=3)
    {
        self.startMonth.text= sets[0];
        self.startday.text= sets[1];
        self.startYear.text= sets[2];
        
        self.endMonth.text= sets[0];
        self.endday.text= sets[1];
        self.endYear.text= sets[2];
    }
 
   
}
- (IBAction)next:(id)sender {
    UIViewController *initialVC= [self.storyboard instantiateViewControllerWithIdentifier:@"UserGoalDescription"];
    [self.navigationController pushViewController:initialVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startDate:(id)sender {
    self.flatDatePicker.title = @"Select Start Date";
    self.flatDatePicker.tag=1;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateFormat:@"MM:dd:yyyy"];
    NSDate *date = [NSDate date];
    if (self.flatDatePicker.isOpen) {
        [self.flatDatePicker setDate:date animated:YES];
    } else {
        [self.flatDatePicker setDate:date animated:NO];
    }
    [self.flatDatePicker show];
   
}

- (IBAction)endDate:(id)sender {
    self.flatDatePicker.title = @"Select End Date";
    self.flatDatePicker.tag=2;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateFormat:@"MM:dd:yyyy"];
    NSDate *date = [NSDate date];
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
        if (self.flatDatePicker.tag==1) {
            self.startMonth.text= sets[0];
            self.startday.text= sets[1];
            self.startYear.text= sets[2];
        }
        else
        {
            self.endMonth.text= sets[0];
            self.endday.text= sets[1];
            self.endYear.text= sets[2];
        }
        
        
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
        if (self.flatDatePicker.tag==1) {
            self.startMonth.text= sets[0];
            self.startday.text= sets[1];
            self.startYear.text= sets[2];
        }
        else
        {
            self.endMonth.text= sets[0];
            self.endday.text= sets[1];
            self.endYear.text= sets[2];
        }
        
    }
    
    
    
}
@end
