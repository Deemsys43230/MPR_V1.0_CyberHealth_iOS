//
//  BloodGroupViewController.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "HipWaistViewController.h"

@interface HipWaistViewController ()

@end

@implementation HipWaistViewController
@synthesize alert;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.blurView.blurRadius = 10;
    self.blurView.tintColor=[UIColor clearColor];
    self.blurView.dynamic = NO;
    self.blurView.contentMode = UIViewContentModeRight;
    self.blurView.layer.contentsGravity = kCAGravityBottomLeft;
    [self.blurView setClipsToBounds:YES];
    [self.blurView updateAsynchronously:YES completion:^{
        // Whatever you want
    }];
    [[TRSDialScrollView appearance] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"DialBackground"]]];
    [[TRSDialScrollView appearance] setOverlayColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"DialShadding"]]];
    
    [[TRSDialScrollView appearance] setLabelStrokeColor:[UIColor colorWithRed:0.400 green:0.525 blue:0.643 alpha:1.000]];
    [[TRSDialScrollView appearance] setLabelStrokeWidth:0.1f];
    [[TRSDialScrollView appearance] setLabelFillColor:[UIColor colorWithRed:0.098 green:0.220 blue:0.396 alpha:1.000]];
    
    [[TRSDialScrollView appearance] setLabelFont:[UIFont fontWithName:@"Avenir" size:20]];
    
    [[TRSDialScrollView appearance] setMinorTickColor:[UIColor colorWithRed:0.800 green:0.553 blue:0.318 alpha:1.000]];
    [[TRSDialScrollView appearance] setMinorTickLength:15.0];
    [[TRSDialScrollView appearance] setMinorTickWidth:1.0];
    
    [[TRSDialScrollView appearance] setMajorTickColor:[UIColor colorWithRed:0.098 green:0.220 blue:0.396 alpha:1.000]];
    [[TRSDialScrollView appearance] setMajorTickLength:33.0];
    [[TRSDialScrollView appearance] setMajorTickWidth:2.0];
    
    [[TRSDialScrollView appearance] setShadowColor:[UIColor colorWithRed:0.593 green:0.619 blue:0.643 alpha:1.000]];
    [[TRSDialScrollView appearance] setShadowOffset:CGSizeMake(0, 1)];
    [[TRSDialScrollView appearance] setShadowBlur:0.9f];
    
    [[TRSDialScrollView appearance] setMinorTicksPerMajorTick:5];
    [[TRSDialScrollView appearance] setMinorTickDistance:16];
    
    [self.hipView setDialRangeFrom:20 to:75 withTag:1];
    self.hipView.currentValue = 50;
    self.hipView.delegate = self;
    self.hipView.tag=1;
    
    self.hipValue.text=@"50";
     self.waistValue.text=@"50";
    
    [self.waistView setDialRangeFrom:20 to:75 withTag:2];
    self.waistView.currentValue = 50;
    self.waistView.delegate = self;
    self.waistView.tag=2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollViewDelegate

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (scrollView.tag==1) {
        // NSLog(@"heightView scrollViewDidEndDecelerating: %li", (long)self.heightView.currentValue);
        self.hipValue.text=[NSString stringWithFormat:@"%li",(long)self.hipView.currentValue];
        
    }else
    {
        // NSLog(@"weightView scrollViewDidEndDecelerating: %li", (long)self.weightView.currentValue);
        self.waistValue.text=[NSString stringWithFormat:@"%li",(long)self.waistView.currentValue];
    }
    
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    if (scrollView.tag==1) {
        // NSLog(@"scrollViewWillBeginDragging: %li", (long)self.heightView.currentValue);
        self.hipValue.text=[NSString stringWithFormat:@"%li",(long)self.hipView.currentValue];
    }else
    {
        // NSLog(@"scrollViewWillBeginDragging: %li", (long)self.weightView.currentValue);
        self.waistValue.text=[NSString stringWithFormat:@"%li",(long)self.waistView.currentValue];
    }
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    if (scrollView.tag==1) {
        static NSInteger last_value = 0;
        
        // Calculate the value based on the content offset
        NSInteger value = self.hipView.currentValue;
        
        if (value != last_value) {
            NSLog(@"Metric: value=%li", (long)value);
            self.hipValue.text=[NSString stringWithFormat:@"%li",(long)value];
        }
        
        last_value = value;
    }
    else
    {
        static NSInteger last_value = 0;
        
        // Calculate the value based on the content offset
        NSInteger value = self.waistView.currentValue;
        
        if (value != last_value) {
            NSLog(@"Metric: value=%li", (long)value);
            self.waistValue.text=[NSString stringWithFormat:@"%li",(long)value];
        }
        
        last_value = value;
    }
    
}

- (IBAction)Done:(id)sender {
   alert = [[SCLAlertView alloc] init];
    
    // alert.backgroundType = Blur;
    [alert setShowAnimationType:SlideInFromLeft];
    [alert setHideAnimationType:SlideOutToBottom];
    alert.backgroundType = Blur;
    
    [alert showWaiting:self title:@"Registering..."
              subTitle:@""
      closeButtonTitle:nil duration:3.0f];
    [alert alertIsDismissed:^{
        [self performSelector:@selector(dismiss) withObject:self afterDelay:0.1f];
        
    }];
   
}
-(void)dismiss{
  [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
