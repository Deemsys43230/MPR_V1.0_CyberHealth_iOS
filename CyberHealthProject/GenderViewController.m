//
//  GenderViewController.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "GenderViewController.h"

@interface GenderViewController ()

@end

@implementation GenderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.male.tag=1;
    self.female.tag=2;
    
    //BlurView
    self.blurView.blurRadius = 10;
    self.blurView.dynamic = NO;
    self.blurView.tintColor=[UIColor clearColor];
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
- (IBAction)genderSelected:(UIButton*)sender {
    
    if (sender.tag==1) {
        self.genderType=@"1";
        self.MaleSelection.image=[UIImage imageNamed:@"Male.png"];
        self.FemaleSelection.image=[UIImage imageNamed:@"FemaleWhite.png"];
        
    }
    else if (sender.tag==2) {
        self.genderType=@"2";        
        self.MaleSelection.image=[UIImage imageNamed:@"MaleWhite.png"];
        self.FemaleSelection.image=[UIImage imageNamed:@"Female.png"];
    }
    
}
#pragma mark -Actions
- (IBAction)gotoNext:(id)sender {
    
}


@end
