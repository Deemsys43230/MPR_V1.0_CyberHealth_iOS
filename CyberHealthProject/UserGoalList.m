//
//  UserGoalList.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "UserGoalList.h"

@interface UserGoalList ()

@end

@implementation UserGoalList
@synthesize goalsList;
@synthesize goalListTableView;
@synthesize goalDetail;
@synthesize goalsSearchList;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"Goal List";
    
   SM=[[SharedMethods alloc]init];
    
    goalDetail=[[NSMutableDictionary alloc]init];
    goalsList=[[NSMutableArray alloc]init];
    goalsSearchList=[[NSMutableArray alloc]init];
    self.ap=AppDelegateMacro;
    goalDetail[@"goalName"]=@"Weekly Challenge";
    goalDetail[@"groupName"]=@"Warriors";
    goalDetail[@"createdby"]=@"John";
    goalDetail[@"goalImage"]=@"challenge1.png";
    goalDetail[@"startDate"]=@"01/01/2015";
    goalDetail[@"endDate"]=@"01/07/2015";
    goalDetail[@"prizeWon"]=@"1";
    goalDetail[@"goalDescription"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [goalsList addObject:goalDetail];
    
    goalDetail=[[NSMutableDictionary alloc]init];
    goalDetail[@"goalName"]=@"Workout Challenge";
    goalDetail[@"groupName"]=@"Warriors";
    goalDetail[@"createdby"]=@"Metilda";
    goalDetail[@"goalImage"]=@"challenge2.png";
    goalDetail[@"startDate"]=@"06/01/2015";
    goalDetail[@"endDate"]=@"06/30/2015";
    //goalDetail[@"expiresin"]=@"6";
    goalDetail[@"prizeWon"]=@"0";
    goalDetail[@"goalDescription"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [goalsList addObject:goalDetail];
    
    goalDetail=[[NSMutableDictionary alloc]init];
    goalDetail[@"goalName"]=@"Monthly Challenge";
    goalDetail[@"groupName"]=@"Warriors";
    goalDetail[@"createdby"]=@"Hilda";
    goalDetail[@"goalImage"]=@"challenge3.png";
    goalDetail[@"startDate"]=@"12/01/2015";
    goalDetail[@"endDate"]=@"12/30/2015";
    //goalDetail[@"expiresin"]=@"350";
    goalDetail[@"prizeWon"]=@"0";
    goalDetail[@"goalDescription"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [goalsList addObject:goalDetail];
    
    goalDetail=[[NSMutableDictionary alloc]init];
    goalDetail[@"goalName"]=@"Hourly Challenge";
    goalDetail[@"groupName"]=@"Seniors Group";
    goalDetail[@"createdby"]=@"Steve";
    goalDetail[@"goalImage"]=@"challenge4.png";
    goalDetail[@"startDate"]=@"07/01/2015";
    goalDetail[@"endDate"]=@"07/01/2015";
    //goalDetail[@"expiresin"]=@"11";
    goalDetail[@"prizeWon"]=@"0";
    goalDetail[@"goalDescription"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [goalsList addObject:goalDetail];
    
    goalDetail=[[NSMutableDictionary alloc]init];
    goalDetail[@"goalName"]=@"Fit Challenge";
    goalDetail[@"groupName"]=@"Childhood Group";
    goalDetail[@"createdby"]=@"Johnson";
    goalDetail[@"goalImage"]=@"challenge5.png";
    goalDetail[@"startDate"]=@"03/01/2015";
    goalDetail[@"endDate"]=@"03/20/2015";
    //goalDetail[@"expiresin"]=@"10";
    goalDetail[@"prizeWon"]=@"1";
    goalDetail[@"goalDescription"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [goalsList addObject:goalDetail];
    
    goalDetail=[[NSMutableDictionary alloc]init];
    goalDetail[@"goalName"]=@"Fat Challenge";
    goalDetail[@"groupName"]=@"Angels Group";
    goalDetail[@"createdby"]=@"William";
    goalDetail[@"goalImage"]=@"challenge1.png";
    goalDetail[@"startDate"]=@"04/01/2015";
    goalDetail[@"endDate"]=@"08/25/2015";
    //goalDetail[@"expiresin"]=@"0";
    goalDetail[@"prizeWon"]=@"0";
    goalDetail[@"goalDescription"]=@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam";
    [goalsList addObject:goalDetail];
    
    UIBarButtonItem *addGoal=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addGoal:)];
    self.navigationItem.rightBarButtonItem=addGoal;
    
}
-(int)GetGoalStatusFromDate:(NSString *)fromDate toDate:(NSString *)toDate
{
    /*
     
     Return Status 
      1 --> Goal yet to start
      2 --> Goal is in middle
      3 --> Goal Expired / Finished
     
     */
   
    NSDateFormatter *formate=[SM dateFormatter];
  //  NSLog(@"date formatter %@",[formate stringFromDate:[NSDate date]]);
    NSDate *date1 = [formate dateFromString:fromDate];
    NSDate *date2 = [formate dateFromString:toDate];
    NSDate *currentDate=[NSDate date];
    //difference between dates in miliseconds
    NSTimeInterval interval = [date1 timeIntervalSinceDate:date2];
    
    //compare two dates
    NSComparisonResult result1 = [currentDate compare:date1];
    NSComparisonResult result2 = [currentDate compare:date2];
   // NSLog(@"date 1 %@, date 2 %@, result 1 %d, result2 %d",date1,date2,result1,result2);
    if ((result1==NSOrderedSame)||(result2==NSOrderedSame)) {
        return 2;
    }
    else if ((result1==NSOrderedAscending)&&(result2==NSOrderedAscending)) {
        return 1;
    }
    else if ((result1==NSOrderedDescending)&&(result2==NSOrderedAscending)) {
        return 2;
    }
    else if ((result1==NSOrderedDescending)&&(result2==NSOrderedDescending)) {
        return 3;
    }
    else
        return 3;
   
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        
        return [goalsSearchList count];
    }
    else
        return [goalsList count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 105.0f;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UserGoalCell *cell=(UserGoalCell *)[self.goalListTableView dequeueReusableCellWithIdentifier:@"UserGoalCell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UserGoalCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UserGoalCell"];
    }
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        goalDetail= [goalsSearchList objectAtIndex:indexPath.row];
    }
    else
    {
        goalDetail=goalsList[indexPath.row];
    }

    if ([goalDetail count]>0) {
        
    
   
    cell.goalName.text=goalDetail[@"goalName"];
    cell.groupName.text=goalDetail[@"groupName"];
    cell.createdBy.text=[NSString stringWithFormat:@"Created by %@",goalDetail[@"createdby"]];
    
    NSString *goalImageURL=goalDetail[@"goalImage"];
    cell.goalImage.image=[UIImage imageNamed:goalImageURL];
    
    cell.goalImage.layer.cornerRadius = 35;
    cell.goalImage.layer.masksToBounds = YES;
    cell.goalImage.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
    cell.goalImage.layer.borderWidth=1.0f;
    
    cell.prizeImage.hidden=YES;
    if ([goalDetail[@"prizeWon"]isEqualToString:@"1"]) {
        cell.prizeImage.hidden=NO;
    }
    int val=[self GetGoalStatusFromDate:goalDetail[@"startDate"] toDate:goalDetail[@"endDate"]];
    goalDetail[@"goalStatus"]=[NSString stringWithFormat:@"%d",val];
    switch (val) {
        case 1:
            cell.expiresIn.text=[NSString stringWithFormat:@"Starts in %d days",val];
            [goalDetail setValue:cell.expiresIn.text forKey:@"expiresin"];
            cell.expiresIn.textColor=[UIColor greenColor];
            break;
        case 2:
            cell.expiresIn.text=[NSString stringWithFormat:@"Expires in %d days",val];
            cell.expiresIn.textColor=[UIColor cyanColor];
            [goalDetail setValue:cell.expiresIn.text forKey:@"expiresin"];
            break;
        case 3:
            cell.expiresIn.text=[NSString stringWithFormat:@"Goal Completed"];
            cell.expiresIn.textColor=[UIColor redColor];
            [goalDetail setValue:cell.expiresIn.text forKey:@"expiresin"];
            break;
            
        default:
            break;
    }
    
    
  /*  [[[AsyncImageDownloader alloc] initWithMediaURL:goalImageURL successBlock:^(UIImage *image)  {
        [cell.goalImage setImage:image];
    } failBlock:^(NSError *error) {
        NSLog(@"Failed to download image due to %@!", error);
    }] startDownload];
   */
    
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        if ([goalsSearchList count]>0) {
             [goalsSearchList replaceObjectAtIndex:indexPath.row withObject:goalDetail];
        }
      
    }
    else
    {
        if ([goalsList count]>0) {
            [goalsList replaceObjectAtIndex:indexPath.row withObject:goalDetail];
        }
       
    }
    
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        goalDetail= [goalsSearchList objectAtIndex:indexPath.row];
    }
    else
    {
        goalDetail=goalsList[indexPath.row];
    }   
   
  
   UIViewController *initialVC= [self.storyboard instantiateViewControllerWithIdentifier:@"GoalInfo"];
    self.ap.selectedGoal=goalDetail;
    [self.navigationController pushViewController:initialVC animated:YES];
}
- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    [goalsSearchList removeAllObjects];
    
   
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"goalName CONTAINS[cd] %@",_searchBar.text];
    
    goalsSearchList = [[goalsList filteredArrayUsingPredicate:resultPredicate] mutableCopy];
   
    
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
#pragma mark - actions
-(IBAction)addGoal:(id)sender
{
   
    UIViewController*AddNewGoal=  [self.storyboard instantiateViewControllerWithIdentifier:@"AddNewGoal"];
    [self.navigationController pushViewController:AddNewGoal animated:YES];
}
@end
