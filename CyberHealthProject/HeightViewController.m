//
//  HeightViewController.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "HeightViewController.h"

@interface HeightViewController ()

@end

@implementation HeightViewController

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
    
    [self.heightView setDialRangeFrom:100 to:275 withTag:1];
    self.heightView.currentValue = 150;
    self.heightView.delegate = self;
    self.heightView.tag=1;
    
    self.heightValue.text=@"150";
    self.weightValue.text=@"55";
    
    [self.weightView setDialRangeFrom:25 to:200 withTag:2];
    self.weightView.currentValue = 55;
    self.weightView.delegate = self;
    self.weightView.tag=2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (scrollView.tag==1) {
        // NSLog(@"heightView scrollViewDidEndDecelerating: %li", (long)self.heightView.currentValue);
        self.heightValue.text=[NSString stringWithFormat:@"%li",(long)self.heightView.currentValue];
        
    }else
    {
        // NSLog(@"weightView scrollViewDidEndDecelerating: %li", (long)self.weightView.currentValue);
          self.weightValue.text=[NSString stringWithFormat:@"%li",(long)self.weightView.currentValue];
    }
   
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    if (scrollView.tag==1) {
       // NSLog(@"scrollViewWillBeginDragging: %li", (long)self.heightView.currentValue);
         self.heightValue.text=[NSString stringWithFormat:@"%li",(long)self.heightView.currentValue];
    }else
    {
      // NSLog(@"scrollViewWillBeginDragging: %li", (long)self.weightView.currentValue);
         self.weightValue.text=[NSString stringWithFormat:@"%li",(long)self.weightView.currentValue];
    }
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    if (scrollView.tag==1) {
        static NSInteger last_value = 0;
        
        // Calculate the value based on the content offset
        NSInteger value = self.heightView.currentValue;
        
        if (value != last_value) {
            NSLog(@"Metric: value=%li", (long)value);
            self.heightValue.text=[NSString stringWithFormat:@"%li",(long)value];
        }
        
        last_value = value;
    }
    else
    {
        static NSInteger last_value = 0;
        
        // Calculate the value based on the content offset
        NSInteger value = self.weightView.currentValue;
        
        if (value != last_value) {
            NSLog(@"Metric: value=%li", (long)value);
            self.weightValue.text=[NSString stringWithFormat:@"%li",(long)value];
        }
        
        last_value = value;
    }
    
}



@end
