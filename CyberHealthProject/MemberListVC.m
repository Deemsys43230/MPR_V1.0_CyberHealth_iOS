//
//  MemberListVC.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "MemberListVC.h"

@interface MemberListVC ()

@end

@implementation MemberListVC
@synthesize tableView;
@synthesize searchBar;
@synthesize memberDetail;
@synthesize membersList;
@synthesize membersSearchList;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.ap=AppDelegateMacro;
    self.goalDetail=self.ap.selectedGoal;
    self.navigationController.topViewController.title=[NSString stringWithFormat:@"Members"];
    memberDetail=[[NSMutableDictionary alloc]init];
    membersList=[[NSMutableArray alloc]init];
    membersSearchList=[[NSMutableArray alloc]init];
   
    
    memberDetail[@"memberName"]=@"Robert";
    memberDetail[@"groupName"]=self.goalDetail[@"goalName"];
    memberDetail[@"points"]=@"1112 cal";
    memberDetail[@"memberImage"]=@"person1.jpg";
    memberDetail[@"position"]=@"1";
    [membersList addObject:memberDetail];
    
    memberDetail=[[NSMutableDictionary alloc]init];
    memberDetail[@"memberName"]=@"William";
    memberDetail[@"groupName"]=self.goalDetail[@"goalName"];
    memberDetail[@"points"]=@"1012 cal";
    memberDetail[@"memberImage"]=@"person2.jpg";
    memberDetail[@"position"]=@"2";
    [membersList addObject:memberDetail];

    
    memberDetail=[[NSMutableDictionary alloc]init];
    memberDetail[@"memberName"]=@"Jeffery";
    memberDetail[@"groupName"]=self.goalDetail[@"goalName"];
    memberDetail[@"points"]=@"802 cal";
    memberDetail[@"memberImage"]=@"person3.jpg";
    memberDetail[@"position"]=@"3";
    [membersList addObject:memberDetail];
    
    memberDetail=[[NSMutableDictionary alloc]init];
    memberDetail[@"memberName"]=@"Renold";
    memberDetail[@"groupName"]=self.goalDetail[@"goalName"];
    memberDetail[@"points"]=@"702 cal";
    memberDetail[@"memberImage"]=@"person4.jpg";
    memberDetail[@"position"]=@"4";
    [membersList addObject:memberDetail];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [membersSearchList count];
    }
    else
        return [membersList count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 81.0f;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    MemberList *cell=(MemberList *)[self.tableView dequeueReusableCellWithIdentifier:@"MemberList" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[MemberList alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MemberList"];
    }

    if (tableView == self.searchDisplayController.searchResultsTableView) {
        memberDetail= [membersSearchList objectAtIndex:indexPath.row];
    }
    else
    {
        memberDetail=membersList[indexPath.row];
    }
    
    
        
        
        cell.MemberName.text=memberDetail[@"memberName"];
        cell.points.text=memberDetail[@"points"];
        
        NSString *memberImageURL=memberDetail[@"memberImage"];
        cell.MemberImage.image=[UIImage imageNamed:memberImageURL];
        
        cell.MemberImage.layer.cornerRadius = 35;
        cell.MemberImage.layer.masksToBounds = YES;
        cell.MemberImage.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
        cell.MemberImage.layer.borderWidth=1.0f;
       
        cell.position.text=memberDetail[@"position"];
      
       
   
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        memberDetail= [membersSearchList objectAtIndex:indexPath.row];
    }
    else
    {
        memberDetail=membersList[indexPath.row];
    }
    
    
    UIViewController *initialVC= [self.storyboard instantiateViewControllerWithIdentifier:@"MemberInfo"];
    self.ap.GoalMemberList=memberDetail;
    [self.navigationController pushViewController:initialVC animated:YES];
}
- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    [membersSearchList removeAllObjects];
    
    
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"memberName CONTAINS[cd] %@",searchBar.text];
    
    membersSearchList = [[membersList filteredArrayUsingPredicate:resultPredicate] mutableCopy];
    
    
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
