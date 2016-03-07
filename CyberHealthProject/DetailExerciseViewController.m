//
//  DetailExerciseViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/26/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "DetailExerciseViewController.h"

@interface DetailExerciseViewController ()

@end

@implementation DetailExerciseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.timePicker.datePickerMode = UIDatePickerModeTime;
    
    self.timePicker.hidden=YES;
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"NL"];
    [self.timePicker setLocale:locale];
    
    self.boderView.layer.borderColor = [UIColor colorWithRed:255/255 green:74/255 blue:11/255 alpha:1.0].CGColor;
    self.boderView.layer.borderWidth = 0.5f;
    self.boderView.layer.cornerRadius = 10;
    
    self.boderView.layer.masksToBounds = YES;

    
  //  NSLog([@"hello" substringToIndex:2]);
   // NSLog([@"hello" substringFromIndex:3]);
  //  NSLog([@"hello" substringWithRange:(2)]);

    
    
    
    // keyboard dismiss::
    _tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapAnywhere:)];
    //  _tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:_tapRecognizer];
    
}
- (void)didTapAnywhere:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
    
    
}

- (IBAction)timePicker:(id)sender {
    [self.view endEditing:YES];

 //   NSLog(@"call time picker action.");
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm"];
    NSString *currentTime = [dateFormatter stringFromDate:self.timePicker.date];
  //  NSLog([currentTime substringToIndex:2]);
  //  NSLog([currentTime substringFromIndex:3]);

    
    [self.hoursBtn setTitle:[NSString stringWithFormat:@"%@hr %@min",[currentTime substringToIndex:2],[currentTime substringFromIndex:3]] forState:UIControlStateNormal];
    self.timePicker.hidden=YES;
    
}

- (IBAction)hoursBtn:(id)sender {
    [self.view endEditing:YES];

    self.timePicker.hidden=NO
    ;

}

- (IBAction)cancel:(id)sender {
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
