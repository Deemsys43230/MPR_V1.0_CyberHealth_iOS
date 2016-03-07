//
//  MainInviteFriendsViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/23/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "MainInviteFriendsViewController.h"

@interface MainInviteFriendsViewController ()

@end

@implementation MainInviteFriendsViewController

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
    self.navigationController.topViewController.title=@"Invite Friends";

 //   UIBarButtonItem *close=[[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStyleBordered target:self action:@selector(close)];
    
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;
//    
    
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"friends_storyboard" bundle:nil];
    UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"invite"];
    [self addChildViewController:vc];
    [vc didMoveToParentViewController:self];
    vc.view.frame = CGRectMake(0,0,320,437);
    
    [self.containerView addSubview:vc.view];
}
-(void)nav_drawer{

    [[AppDelegate mainDelegate].slideMenuVC toggleMenu];



}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;
//    
    
    if (self.segment.selectedSegmentIndex==0) {
        self.navigationController.topViewController.title=@"Invite Friends";

        
    }
    else  if (self.segment.selectedSegmentIndex==1) {

        self.navigationController.topViewController.title=@"Notifications";

    }
    
}

- (IBAction)segmentChange:(id)sender {
    
    if (self.segment.selectedSegmentIndex==0) {
        self.navigationController.topViewController.title=@"Invite Friends";

        [self.view endEditing:YES];
        
        UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"friends_storyboard" bundle:nil];
        UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"invite"];
        [self addChildViewController:vc];
        [vc didMoveToParentViewController:self];
        vc.view.frame = CGRectMake(0,0,320,437);
        
        [self.containerView addSubview:vc.view];
        
    }
    else  if (self.segment.selectedSegmentIndex==1) {
        [self.view endEditing:YES];
        self.navigationController.topViewController.title=@"Notifications";

        UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"friends_storyboard" bundle:nil];
        UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"noti"];
        [self addChildViewController:vc];
        [vc didMoveToParentViewController:self];
        vc.view.frame = CGRectMake(0,0,320,437);
        
        [self.containerView addSubview:vc.view];
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
