//
//  InviteFriendsViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/23/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "InviteFriendsViewController.h"
#import "InviteFriendsTableViewCell.h"
@interface InviteFriendsViewController ()

@end

@implementation InviteFriendsViewController

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

    [self getDatas];
    
    filteredContentList = [[NSMutableArray alloc] init];

}

-(void)getDatas{

    
    listArray=[[NSMutableArray alloc] init];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Hari" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"122" forKey:@"MutualFriends"];
    [listDict setValue:@"22/08/1963" forKey:@"dob"];
    [listDict setValue:@"OHIO USA" forKey:@"lives"];
    [listDict setValue:@"1" forKey:@"inviteBtn"];
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Mike Mike" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p1.jpeg"] forKey:@"profileImg"];
    [listDict setValue:@"50" forKey:@"MutualFriends"];
    [listDict setValue:@"13/11/1979" forKey:@"dob"];
    [listDict setValue:@"Canada" forKey:@"lives"];
    [listDict setValue:@"1" forKey:@"inviteBtn"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Jacob Jacob" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p2.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"100" forKey:@"MutualFriends"];
    [listDict setValue:@"06/12/1986" forKey:@"dob"];
    [listDict setValue:@"Australia" forKey:@"lives"];
    [listDict setValue:@"1" forKey:@"inviteBtn"];
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Britto Britto" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p3.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"150" forKey:@"MutualFriends"];
    [listDict setValue:@"05/05/1992" forKey:@"dob"];
    [listDict setValue:@"Japan" forKey:@"lives"];
    [listDict setValue:@"1" forKey:@"inviteBtn"];
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Fedal Fedal" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p4.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"198" forKey:@"MutualFriends"];
    [listDict setValue:@"16/02/1989" forKey:@"dob"];
    [listDict setValue:@"Sri lanka" forKey:@"lives"];
    [listDict setValue:@"1" forKey:@"inviteBtn"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Harrish Hari" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p8.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"200" forKey:@"MutualFriends"];
    [listDict setValue:@"18/07/1980" forKey:@"dob"];
    [listDict setValue:@"USA" forKey:@"lives"];
    [listDict setValue:@"1" forKey:@"inviteBtn"];
    
    [listArray addObject:listDict];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Antony Ant" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p6.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"511" forKey:@"MutualFriends"];
    [listDict setValue:@"16/09/1990" forKey:@"dob"];
    [listDict setValue:@"India" forKey:@"lives"];
    [listDict setValue:@"1" forKey:@"inviteBtn"];
    
    [listArray addObject:listDict];
    


}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    if (isSearching) {
        return [filteredContentList count];
    }
    else {
        
        return [listArray count];
        
    }

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    @try {
        
        InviteFriendsTableViewCell *cell = (InviteFriendsTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"invite" forIndexPath:indexPath];
        
        if (isSearching)
        {
            data_for_cell= [filteredContentList objectAtIndex:indexPath.row];
       
        cell.profileImg.image=[data_for_cell valueForKey:@"profileImg"];
        cell.FriendName.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"friendName"]];
        cell.MutualFriends.text=[NSString stringWithFormat:@"%@ (Mutual friends)",[data_for_cell valueForKey:@"MutualFriends"]];
        cell.dob.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"dob"]];
        cell.lives.text=[NSString stringWithFormat:@"Lives in %@",[data_for_cell valueForKey:@"lives"]];
        
        //  cell.bdayImage.hidden=NO;
        
        cell.profileImg.layer.cornerRadius = 35;
        
        cell.profileImg.layer.masksToBounds = YES;
    //    NSLog(@"The values==%@",[NSString stringWithFormat:@"Lives in %@",[data_for_cell valueForKey:@"lives"]]);
            
            NSMutableArray *rightUtilityButtons = [NSMutableArray new];

            if ([[data_for_cell valueForKey:@"inviteBtn"] isEqualToString:@"1"]) {
                 [rightUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:1.0f green:0.231f blue:0.188 alpha:1.0f]title:@"Invite"];
            
            
          //  [rightUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:1.0f green:0.231f blue:0.188 alpha:1.0f]title:@"Deny"];
                btnTitle=@"invite";
            }else if ([[data_for_cell valueForKey:@"inviteBtn"] isEqualToString:@"2"]) {
            

               [rightUtilityButtons sw_addUtilityButtonWithColor:[UIColor colorWithRed:51/255.0 green:214/255.0 blue:133/255.0 alpha:1] title:@"Invited"];
                btnTitle=@"invited";

            }
            cell.rightUtilityButtons = rightUtilityButtons;
            cell.delegate = self;

            
        }
        else
        {
            data_for_cell= [listArray objectAtIndex:indexPath.row];
            
            
        }
        
        
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"friends_profile_storyboard" bundle:nil];
    UIViewController *initialvc=[welcome instantiateInitialViewController];
    [self.navigationController pushViewController:initialvc animated:YES];
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}


- (void)swipeableTableViewCell:(InviteFriendsTableViewCell *)cell didTriggerRightUtilityButtonWithIndex:(NSInteger)index {
    
    switch (index) {
        case 0:
        {
            NSLog(@"Set Default called");

            NSIndexPath *cellIndexPath = [self.tableView indexPathForCell:cell];

            if([btnTitle isEqualToString:@"invite"]){
                
                data_for_cell= [filteredContentList objectAtIndex:cellIndexPath.row];
                [data_for_cell setValue:@"2" forKey:@"inviteBtn"];
                
            }
            else if([btnTitle isEqualToString:@"invited"]){
                data_for_cell= [filteredContentList objectAtIndex:cellIndexPath.row];
                [data_for_cell setValue:@"1" forKey:@"inviteBtn"];
                
                
            }
            
            [self.tableView reloadData];

            
         //   commonDict= [listArray objectAtIndex:cellIndexPath.row];
            
            
            
        //    data_for_cell= [listArray objectAtIndex:cellIndexPath.row];
          /*  UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"friends_list_storyboard" bundle:nil];
            FriendsListViewController * bController=[welcome instantiateViewControllerWithIdentifier:@"list"];
            bController.delegate=self;
            NSDictionary *object =data_for_cell;
            [bController  setDetailItem:object];
            [self.navigationController pushViewController:bController animated:YES];*/
         //   [listArray removeObjectAtIndex:cellIndexPath.row];
            
            
            
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


- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    
    
    isSearching = NO;
    
    self.searchBar.showsCancelButton = YES;
    
    for (UIView *subView in searchBar.subviews) {
        if ([subView isKindOfClass:[UIButton class]]) {
            UIButton *cancelButton = (UIButton*)subView;
            
            [cancelButton setTitle:@"Cancel" forState:UIControlStateNormal];
        }
    }
    self.searchBar.autocorrectionType = UITextAutocorrectionTypeNo;
    
    UITextField *textField = [self.searchBar valueForKey:@"_searchField"];
    
    textField.clearButtonMode = UITextFieldViewModeNever;
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    NSLog(@"Text change = %d",isSearching);
    
   
        
    
    //Remove all objects first.
   // [filteredContentList removeAllObjects];
    
    if([searchText length] != 0) {
        
        [self getDatas];
        
        isSearching = YES;
        //  [self searchTableList];
        
         @try {
            NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"friendName CONTAINS[cd] %@",_searchBar.text];
            
            filteredContentList = [[listArray filteredArrayUsingPredicate:resultPredicate] mutableCopy];
             
             [self.tableView reloadData];

             
             
    }
        @catch (NSException *exception) {
            NSLog(@"Exception= %@",exception);
        }
    }
    else {

        NSLog(@"search text empty");
        [searchBar resignFirstResponder];
        
        
        isSearching = NO;
        [listArray removeAllObjects];
        [filteredContentList removeAllObjects];
        [self.tableView reloadData];

    }
   
  //   [self.tableView reloadData];
   
    
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"Cancel clicked");
    self.searchBar.text=@"";
    NSLog(@"filteredContentList=%@",filteredContentList);

    [searchBar resignFirstResponder];
 //   isSearching=NO;
    [filteredContentList removeAllObjects];
    NSLog(@"listArray=%@",listArray);
 //   [listArray removeAllObjects];
    [self.tableView reloadData];


}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"Search Clicked");
    
    [self.tableView reloadData];
    [searchBar resignFirstResponder];
    
}

- (void)enableCancelButton:(UISearchBar *)searchBar
{
    for (UIView *view in searchBar.subviews)
    {
        for (id subview in view.subviews)
        {
            if ( [subview isKindOfClass:[UIButton class]] )
            {
                [subview setEnabled:YES];
                NSLog(@"enableCancelButton");
                return;
            }
        }
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
