//
//  userGroupPicker.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 23/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "userGroupPicker.h"

@interface userGroupPicker ()

@end

@implementation userGroupPicker
@synthesize groupDetail;
@synthesize groupsList;
@synthesize groupsSearchList;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.topViewController.navigationItem.title=@"Choose Group";
    groupDetail=[[NSMutableDictionary alloc]init];
    groupsList=[[NSMutableArray alloc]init];
    groupsSearchList=[[NSMutableArray alloc]init];
    groupDetail[@"groupName"]=@"Warriors";
    groupDetail[@"createdby"]=@"John";
    groupDetail[@"groupImage"]=@"challenge1.png";
    groupDetail[@"groupStatus"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [groupsList addObject:groupDetail];
    
    groupDetail=[[NSMutableDictionary alloc]init];
    groupDetail[@"groupName"]=@"Workout Challenge";
    groupDetail[@"groupName"]=@"Avengers";
    groupDetail[@"createdby"]=@"Metilda";
    groupDetail[@"groupImage"]=@"challenge2.png";
    groupDetail[@"groupStatus"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [groupsList addObject:groupDetail];
    
    groupDetail=[[NSMutableDictionary alloc]init];
    groupDetail[@"groupName"]=@"Monthly Challenge";
    groupDetail[@"groupName"]=@"Warriors";
    groupDetail[@"createdby"]=@"Hilda";
    groupDetail[@"groupImage"]=@"challenge3.png";
    groupDetail[@"groupStatus"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [groupsList addObject:groupDetail];
    
    groupDetail=[[NSMutableDictionary alloc]init];
    groupDetail[@"groupName"]=@"Hourly Challenge";
    groupDetail[@"groupName"]=@"Seniors Group";
    groupDetail[@"createdby"]=@"Steve";
    groupDetail[@"groupImage"]=@"challenge4.png";
    groupDetail[@"groupStatus"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [groupsList addObject:groupDetail];
    
    groupDetail=[[NSMutableDictionary alloc]init];
    groupDetail[@"groupName"]=@"Fit Challenge";
    groupDetail[@"groupName"]=@"Childhood Group";
    groupDetail[@"createdby"]=@"Johnson";
    groupDetail[@"groupImage"]=@"challenge5.png";
    groupDetail[@"groupStatus"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [groupsList addObject:groupDetail];
    
    groupDetail=[[NSMutableDictionary alloc]init];
    groupDetail[@"groupName"]=@"Fat Challenge";
    groupDetail[@"groupName"]=@"Angels Group";
    groupDetail[@"createdby"]=@"William";
    groupDetail[@"groupImage"]=@"challenge1.png";
    groupDetail[@"groupStatus"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [groupsList addObject:groupDetail];
    

}
- (IBAction)next:(id)sender {
    UIViewController *initialVC= [self.storyboard instantiateViewControllerWithIdentifier:@"UserGoalTime"];
    [self.navigationController pushViewController:initialVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        
        return [groupsSearchList count];
    }
    else
        return [groupsList count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 81.0f;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SelectGroupPickerCell *cell=(SelectGroupPickerCell *)[self.userGroupList dequeueReusableCellWithIdentifier:@"SelectGroupPickerCell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[SelectGroupPickerCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SelectGroupPickerCell"];
    }
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        groupDetail= [groupsSearchList objectAtIndex:indexPath.row];
    }
    else
    {
        groupDetail=groupsList[indexPath.row];
    }
    
    if ([groupDetail count]>0)
    {
     
        
        
        cell.groupName.text=groupDetail[@"groupName"];
        cell.groupStatus.text=groupDetail[@"groupStatus"];
        cell.createdBy.text=[NSString stringWithFormat:@"Created by %@",groupDetail[@"createdby"]];
        
        NSString *groupImageURL=groupDetail[@"groupImage"];
        cell.groupImage.image=[UIImage imageNamed:groupImageURL];
        
        cell.groupImage.layer.cornerRadius = 35;
        cell.groupImage.layer.masksToBounds = YES;
        cell.groupImage.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
        cell.groupImage.layer.borderWidth=1.0f;
        
        
        
        /*  [[[AsyncImageDownloader alloc] initWithMediaURL:groupImageURL successBlock:^(UIImage *image)  {
         [cell.groupImage setImage:image];
         } failBlock:^(NSError *error) {
         NSLog(@"Failed to download image due to %@!", error);
         }] startDownload];
         */
        
        
        
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        groupDetail= [groupsSearchList objectAtIndex:indexPath.row];
         [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        groupDetail=groupsList[indexPath.row];
         [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    
    
}


-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        
        [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
    }
    else
    {
        [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
    }
}
- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    [groupsSearchList removeAllObjects];
    
    
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"groupName CONTAINS[cd] %@",_searchBar.text];
    
    groupsSearchList = [[groupsList filteredArrayUsingPredicate:resultPredicate] mutableCopy];
    
//    NSLog(@"group list %@",groupsSearchList);
}


#pragma mark - UISearchDisplayController delegate methods


-(BOOL)searchDisplayController:(UISearchDisplayController *)controller
shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

@end
