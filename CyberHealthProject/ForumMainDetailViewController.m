//
//  ForumMainDetailViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "ForumMainDetailViewController.h"
@interface ForumMainDetailViewController ()

@end

@implementation ForumMainDetailViewController

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
    
    
    
    
   

  //  UIViewController  *simple=[[UIViewController alloc] initWithNibName:@"ViewController" bundle:nil];
   // [self.navigationController pushViewController:simple animated:YES];
    
    storyboard=[UIStoryboard storyboardWithName:@"detail_forum_storyboard" bundle:nil];
    UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"title"];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    vc.view.frame = CGRectMake(0,0,320,150);
    [self.containerView2 addSubview:vc.view];
    
   // UIStoryboard *storyboard1=[UIStoryboard storyboardWithName:@"detail_forum_storyboard" bundle:nil];
    
    UIViewController *vc_Chating=[storyboard instantiateViewControllerWithIdentifier:@"chating"];
    [self addChildViewController:vc_Chating];
    [vc_Chating didMoveToParentViewController:self];
    vc_Chating.view.frame = CGRectMake(0,55,320,478);
    [self.containerView2 addSubview:vc_Chating.view];
    
   // [[NSNotificationCenter defaultCenter]removeObserver:self name:@"up" object:nil];
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(up) name:@"up" object:nil];
    
  //  [[NSNotificationCenter defaultCenter]removeObserver:self name:@"down" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(down) name:@"down" object:nil];

}



-(void)up{
    NSLog(@"called up");

    
 //   UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"detail_forum_storyboard" bundle:nil];
    UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"expandable"];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    vc.view.frame = CGRectMake(0,0,320,150);
    [self.containerView2 addSubview:vc.view];
    
 //   UIStoryboard *storyboard1=[UIStoryboard storyboardWithName:@"detail_forum_storyboard" bundle:nil];
    
    UIViewController *vc_Chating=[storyboard instantiateViewControllerWithIdentifier:@"chating"];
    [self addChildViewController:vc_Chating];
    [vc_Chating didMoveToParentViewController:self];
    vc_Chating.view.frame = CGRectMake(0,40,320,478);
    [self.containerView2 addSubview:vc_Chating.view];


}

-(void)down{

    
    NSLog(@"called down");
    
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"detail_forum_storyboard" bundle:nil];
    UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"expandable"];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    vc.view.frame = CGRectMake(0,0,320,150);
    [self.containerView2 addSubview:vc.view];
    
  
    
    UIStoryboard *storyboard1=[UIStoryboard storyboardWithName:@"detail_forum_storyboard" bundle:nil];
    
    UIViewController *vc_Chating=[storyboard1 instantiateViewControllerWithIdentifier:@"chating"];
    [self addChildViewController:vc_Chating];
    [vc_Chating didMoveToParentViewController:self];
    vc_Chating.view.frame = CGRectMake(0,90,320,478);
    [self.containerView2 addSubview:vc_Chating.view];


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
