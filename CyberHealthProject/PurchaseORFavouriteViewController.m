//
//  PurchaseORFavouriteViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "PurchaseORFavouriteViewController.h"

@interface PurchaseORFavouriteViewController ()

@end

@implementation PurchaseORFavouriteViewController

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
    self.navigationController.topViewController.title=@"Purchased Courses";
    
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;

  /*  UIStoryboard *mainStory=[UIStoryboard storyboardWithName:@"main_courses_storyboard" bundle:nil];
    
    UIViewController *VC=[mainStory instantiateViewControllerWithIdentifier:@"purchase"];
    [self.commonView addSubview:VC.view];
    */
    
    
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"main_courses_storyboard" bundle:nil];
    UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"purchase"];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    vc.view.frame = CGRectMake(0,0,320,437);

    [self.commonView addSubview:vc.view];
    self.navigationController.topViewController.navigationItem.rightBarButtonItem=nil;

    

}
-(void)nav_drawer{
    
    [[AppDelegate mainDelegate].slideMenuVC toggleMenu];
    
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //initData
    
    NSLog(@"view will appear called");
    
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;
//    self.navigationController.topViewController.navigationItem.rightBarButtonItem=nil;

    

    if(self.segment.selectedSegmentIndex==0)
    {
        
        self.navigationController.topViewController.title=@"Purchased Courses";
        
    }else if(self.segment.selectedSegmentIndex==1)
    {
        
        self.navigationController.topViewController.title=@"Favourite Courses";
        

    }
    
}

-(IBAction)segment:(id)sender

{

if(self.segment.selectedSegmentIndex==0)
{

    self.navigationController.topViewController.title=@"Purchased Courses";

    NSLog(@"0");
  /*  UIStoryboard *mainStory=[UIStoryboard storyboardWithName:@"main_courses_storyboard" bundle:nil];
    
    UIViewController *VC=[mainStory instantiateViewControllerWithIdentifier:@"purchase"];
    [self.commonView addSubview:VC.view];
    */
    
   /* UIStoryboard *mainStory1=[UIStoryboard storyboardWithName:@"main_courses_storyboard" bundle:nil];
    
    UIViewController *VC1=[mainStory1 instantiateViewControllerWithIdentifier:@"purchase"];
    [self.commonView addSubview:VC1.view];*/
    
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"main_courses_storyboard" bundle:nil];
    UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"purchase"];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    vc.view.frame = CGRectMake(0,0,320,437);
    [self.commonView addSubview:vc.view];
    

}else if(self.segment.selectedSegmentIndex==1)
{    NSLog(@"1");
    self.navigationController.topViewController.title=@"Favourite Courses";

    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"main_courses_storyboard" bundle:nil];
    UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"fvte"];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    vc.view.frame = CGRectMake(0,0,320,437);

    [self.commonView addSubview:vc.view];
    
  /*  UIStoryboard *mainStory2=[UIStoryboard storyboardWithName:@"main_courses_storyboard" bundle:nil];

    UIViewController *VC2=[mainStory2 instantiateViewControllerWithIdentifier:@"fvte"];
   
    [self.commonView addSubview:VC2.view];*/

    
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
