//
//  SettingsTableViewController.m
//  CyberHealth
//
//  Created by Uday on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "SettingsTableViewController.h"
#define YOUR_APP_STORE_ID 906588887 //App id

@interface SettingsTableViewController ()

@end

@implementation SettingsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(logout:)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;
//    
//    
    
    self.navigationItem.leftItemsSupplementBackButton = YES;
    
}

- (IBAction)logout:(id)sender {

    UIViewController *loginVC=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
 //   [[UIApplication sharedApplication].keyWindow setRootViewController:loginVC];
  //  [UIApplication sharedApplication].keyWindow.rootViewController=loginVC;
       [UIApplication sharedApplication].delegate.window.rootViewController = loginVC;
    [   [UIApplication sharedApplication].delegate.window makeKeyAndVisible];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSIndexPath * path = [self.tableView indexPathForSelectedRow];
    NSInteger  index =path.section;
    NSLog(@"%d",index);
    //Section index
    if (index==4)
    {
        //Row index
        if (indexPath.row ==0)
        {
            NSLog(@"Tutorials");
            UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"ApplicationSettings" bundle:nil];
            UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"Tutorials"];
            [self.navigationController pushViewController:vc animated:YES];
        }
        if (indexPath.row ==1)
        {
            NSLog(@"Contact Us");
            UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"ApplicationSettings" bundle:nil];
            UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"Contact"];
            [self.navigationController pushViewController:vc animated:YES];
        }
        if (indexPath.row ==2)
        {
            NSLog(@"Rating");
            NSLog(@"Currently used GPS application App Id");
            static NSString *const iOS7AppStoreURLFormat = @"itms-apps://itunes.apple.com/app/id%d";
            static NSString *const iOSAppStoreURLFormat = @"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%d";
           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:([[UIDevice currentDevice].systemVersion floatValue] >= 7.0f)? iOS7AppStoreURLFormat: iOSAppStoreURLFormat, YOUR_APP_STORE_ID]]]; // Would contain the right link
        }
        if (indexPath.row ==3)
        {
            NSLog(@"Updates");
            UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"ApplicationSettings" bundle:nil];
            UIViewController *vc=[storyboard instantiateViewControllerWithIdentifier:@"Updates"];
            [self.navigationController pushViewController:vc animated:YES];
      }

        
}
    else if (index==6)
    {
        //Logout Action
        if (indexPath.row==0)
        {
            UIActionSheet * actionSheet = [[UIActionSheet alloc]initWithTitle:@"Are you sure to sign out?" delegate:self cancelButtonTitle:@"cancel" destructiveButtonTitle:@"Sign Out" otherButtonTitles:nil];
            [actionSheet showInView:self.view];
        }
    }
    else
    {
        //Do Nothing
    }

    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;
{
    NSString * buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Sign Out"]) {
        // Do Logout
         NSLog(@"Do Sign Out");
        [self logout:nil];
    
       
    }
    if ([buttonTitle isEqualToString:@"cancel"]) {
        //Dismiss Action sheet
        NSLog(@"Dismissed Action sheet");
        [self.tableView reloadData];
    }
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
