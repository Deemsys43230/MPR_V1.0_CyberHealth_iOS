//
//  TitlePageViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/26/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "TitlePageViewController.h"

@interface TitlePageViewController ()

@end

@implementation TitlePageViewController

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
    
  //  self.delegate=AppDelegate;
  //  [self.titleBtn setTitle:@"Title" forState:UIControlStateNormal];
    hide=0;
    
}
-(IBAction)titleBtn:(id)sender
{
    
    if (hide==0) {
        
        hide=1;
        CGRect frame = self.topView.frame;
        
        
        frame.origin.x=-300;
        frame.origin.y=0;
        
        [UIView beginAnimations:nil context:nil];
        
        [UIView setAnimationDuration:1.0];
        
        self.topView.frame=frame;
        
        [UIView commitAnimations];
        
        UIView *accessoryView = self.closeBtn;
            accessoryView.transform = CGAffineTransformMakeRotation(M_PI);

    
    }
    
    
    else if(hide==1){
    
        hide=0;

            CGRect frame = self.topView.frame;
            
            
            frame.origin.x=0;
            frame.origin.y=0;
            
            [UIView beginAnimations:nil context:nil];
            
            [UIView setAnimationDuration:1.0];
            
            self.topView.frame=frame;
            
            [UIView commitAnimations];
        
        UIView *accessoryView = self.closeBtn;
        accessoryView.transform = CGAffineTransformMakeRotation(0);
    
    
    }
}

-(IBAction)closeBtn:(id)sender
{
    
    if (hide==0) {
        
        hide=1;
        CGRect frame = self.topView.frame;
        
        
        frame.origin.x=-300;
        frame.origin.y=0;
        
        [UIView beginAnimations:nil context:nil];
        
        [UIView setAnimationDuration:1.0];
        
        self.topView.frame=frame;
        
        [UIView commitAnimations];
        
        
        UIView *accessoryView = self.closeBtn;
        accessoryView.transform = CGAffineTransformMakeRotation(M_PI);
        

    }
    
    
    else if(hide==1){
        
        hide=0;
        
        CGRect frame = self.topView.frame;
        
        
        frame.origin.x=0;
        frame.origin.y=0;
        
        [UIView beginAnimations:nil context:nil];
        
        [UIView setAnimationDuration:1.0];
        
        self.topView.frame=frame;
        
        [UIView commitAnimations];
        UIView *accessoryView = self.closeBtn;
        accessoryView.transform = CGAffineTransformMakeRotation(0);
        
    }

    
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
