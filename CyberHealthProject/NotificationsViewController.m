//
//  NotificationsViewController.m
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "NotificationsViewController.h"
#import "NotificationsTableViewCell.h"
#import "FriendsListViewController.h"

@interface NotificationsViewController ()

@end

@implementation NotificationsViewController

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
  
    listArray=[[NSMutableArray alloc] init];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Hamilton" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"122" forKey:@"MutualFriends"];
    [listDict setValue:@"22/08/1963" forKey:@"dob"];
    [listDict setValue:@"OHIO USA" forKey:@"lives"];
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Mike Mike" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p1.jpeg"] forKey:@"profileImg"];
    [listDict setValue:@"50" forKey:@"MutualFriends"];
    [listDict setValue:@"13/11/1979" forKey:@"dob"];
    [listDict setValue:@"Canada" forKey:@"lives"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Jacob Jacob" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p2.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"100" forKey:@"MutualFriends"];
    [listDict setValue:@"06/12/1986" forKey:@"dob"];
    [listDict setValue:@"Australia" forKey:@"lives"];
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Britto Britto" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p3.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"150" forKey:@"MutualFriends"];
    [listDict setValue:@"05/05/1992" forKey:@"dob"];
    [listDict setValue:@"Japan" forKey:@"lives"];    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Fedal Fedal" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p4.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"198" forKey:@"MutualFriends"];
    [listDict setValue:@"16/02/1989" forKey:@"dob"];
    [listDict setValue:@"Sri lanka" forKey:@"lives"];
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Harrish Hari" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p8.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"200" forKey:@"MutualFriends"];
    [listDict setValue:@"18/07/1980" forKey:@"dob"];
    [listDict setValue:@"USA" forKey:@"lives"];
    [listArray addObject:listDict];
    
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Antony Ant" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p6.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"511" forKey:@"MutualFriends"];
    [listDict setValue:@"16/09/1990" forKey:@"dob"];
    [listDict setValue:@"India" forKey:@"lives"];
    [listArray addObject:listDict];
    
 
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

   
        return [listArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    @try {
        
        
        NotificationsTableViewCell *cell = (NotificationsTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"noti" forIndexPath:indexPath];
        
       
        
            
      
            data_for_cell= [listArray objectAtIndex:indexPath.row];

        
        cell.profileImg.image=[data_for_cell valueForKey:@"profileImg"];
        cell.FriendName.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"friendName"]];
        cell.MutualFriends.text=[NSString stringWithFormat:@"%@ (Mutual friends)",[data_for_cell valueForKey:@"MutualFriends"]];
        cell.dob.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"dob"]];
        cell.lives.text=[NSString stringWithFormat:@"Lives in %@",[data_for_cell valueForKey:@"lives"]];
        
          //  cell.bdayImage.hidden=NO;
        
        cell.profileImg.layer.cornerRadius = 35;
        
        cell.profileImg.layer.masksToBounds = YES;
            NSLog(@"The values==%@",[NSString stringWithFormat:@"Lives in %@",[data_for_cell valueForKey:@"lives"]]);
        
        NSMutableArray *rightUtilityButtons = [NSMutableArray new];
        [rightUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:51/255.0 green:214/255.0 blue:133/255.0 alpha:1] title:@"Accept"];
        [rightUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:1.0f green:0.231f blue:0.188 alpha:1.0f]title:@"Deny"];
        cell.rightUtilityButtons = rightUtilityButtons;
        cell.delegate = self;

        
        
        
        [cell setSelectionStyle:UITableViewCellSelectionStyleDefault];
        UIView *customColorView = [[UIView alloc] init];
        customColorView.backgroundColor =  [UIColor colorWithRed:255/255.0 green:70/255.0 blue:11/255.0 alpha:0.75];
        cell.selectedBackgroundView =  customColorView;
        
        return cell;
    }
    @catch (NSException *exception) {
        NSLog(@"exception::%@",exception);
    }
    
    
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    
    
    /*   if (tableView == self.searchDisplayController.searchResultsTableView) {
     data_for_cell= [self.searchList objectAtIndex:indexPath.row];
     
     }
     else{
     data_for_cell= [listArray objectAtIndex:indexPath.row];
     
     }
     
     UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"friends_profile_storyboard" bundle:nil];
     UIViewController *initialvc=[welcome instantiateInitialViewController];
     [self.navigationController pushViewController:initialvc animated:YES];*/
    
    
    
        UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"friends_profile_storyboard" bundle:nil];
        UIViewController *initialvc=[welcome instantiateInitialViewController];
        [self.navigationController pushViewController:initialvc animated:YES];
        
  
}

- (void)swipeableTableViewCell:(NotificationsTableViewCell *)cell didTriggerRightUtilityButtonWithIndex:(NSInteger)index {
    
    
    
    
    switch (index) {
        case 0:
        {
            
            
            NSLog(@"Set Default called");
            
          
            NSIndexPath *cellIndexPath = [self.tableView indexPathForCell:cell];
            
            commonDict= [listArray objectAtIndex:cellIndexPath.row];
            
            [listArray removeObjectAtIndex:cellIndexPath.row];
            
            
            [self.tableView reloadData];
            
            break;
        }
        case 1:
        {
            
            
            
            NSLog(@"Set Default called");
            
            
            NSIndexPath *cellIndexPath = [self.tableView indexPathForCell:cell];
            
            commonDict= [listArray objectAtIndex:cellIndexPath.row];
            
            [listArray removeObjectAtIndex:cellIndexPath.row];
            
            
            [self.tableView reloadData];
            

            break;
        }
        default:
            break;
    }
    
}
- (BOOL)swipeableTableViewCellShouldHideUtilityButtonsOnSwipe:(SWTableViewCell *)cell
{
    // allow just one cell's utility button to be open at once
    
    
            return YES;

        
    
}

- (BOOL)swipeableTableViewCell:(SWTableViewCell *)cell canSwipeToState:(SWCellState)state
{
    switch (state) {
        case 1:
            // set to NO to disable all left utility buttons appearing
            return YES;
            break;
        case 2:
            // set to NO to disable all right utility buttons appearing
            return YES;
            break;
        default:
            break;
    }
    
    return YES;
   
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    // Set background color of cell here if you don't want default white
}

#pragma mark - SWTableViewDelegate

- (void)swipeableTableViewCell:(SWTableViewCell *)cell scrollingToState:(SWCellState)state
{
    switch (state) {
        case 0:
            //   NSLog(@"utility buttons closed");
            break;
        case 1:
            //   NSLog(@"left utility buttons open");
            break;
        case 2:
            // NSLog(@"right utility buttons open");
            break;
        default:
            break;
    }
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleInsert;
}



-(void)sendRequest{
    
    requestStr=@"2";
    
    [listArray removeObject:[object valueForKey:@"proImage"]];
    [listArray removeObject:[object valueForKey:@"friendName"]];

    [self.tableView reloadData];
    
    
}

-(void)cancelRequest{
    
    requestStr=@"1";
    [self.tableView reloadData];
    
    
    
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
