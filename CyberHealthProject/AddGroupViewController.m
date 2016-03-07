//
//  AddGroupViewController.m
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "AddGroupViewController.h"
#import "CreateGroupsViewController.h"
@interface AddGroupViewController ()

@end

@implementation AddGroupViewController

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
  

    object=[[NSMutableDictionary alloc] init];
    
    [[self.groupStatus layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[self.groupStatus layer] setBorderWidth:1];
    [[self.groupStatus layer] setCornerRadius:10];

    // keyboard dismiss::
    _tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapAnywhere:)];
    //  _tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:_tapRecognizer];

}
- (void)didTapAnywhere:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
    
   
    
}

-(IBAction)create:(id)sender
{
  /*  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:self.groupName.text forKey:@"groupName"];
    [defaults setObject:self.groupDetails.text forKey:@"groupDetails"];
    
    [defaults synchronize];
    
    NSLog(@"defaults velues::%@",defaults);
    
    [object setValue:defaults forKey:@"default"];
    
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"create_groups" bundle:nil];

    CreateGroupsViewController * bController=[welcome instantiateViewControllerWithIdentifier:@"group"];
    
    bController.delegate=self;
    [bController  setDetailItem:object];
    [self.navigationController pushViewController:bController animated:YES];*/
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];


}

-(IBAction)cancel:(id)sender
{
[self.navigationController dismissViewControllerAnimated:YES completion:nil];
    
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
