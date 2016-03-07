//
//  DinnerViewController.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 25/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "AddFoodViewController.h"

@interface AddFoodViewController ()

@end

@implementation AddFoodViewController
@synthesize foodDetail;
@synthesize foodsList;
@synthesize foodsSearchList;
- (void)viewDidLoad {
    [super viewDidLoad];
     self.navigationController.topViewController.navigationItem.title=@"Add Food";
    foodDetail=[[NSMutableDictionary alloc]init];
    foodsList=[[NSMutableArray alloc]init];
    foodsSearchList=[[NSMutableArray alloc]init];
    foodDetail[@"foodName"]=@"Rice";
    foodDetail[@"servings"]=@"2";
    foodDetail[@"foodImage"]=@"food2.jpg";
    foodDetail[@"caloriesConsumed"]=@"456 Cal";
    [foodsList addObject:foodDetail];
    
    foodDetail=[[NSMutableDictionary alloc]init];
    foodDetail[@"foodName"]=@"Idly";
    foodDetail[@"servings"]=@"1";
    foodDetail[@"foodImage"]=@"food3.jpg";
    foodDetail[@"caloriesConsumed"]=@"1456 Cal";
    [foodsList addObject:foodDetail];
    
    foodDetail=[[NSMutableDictionary alloc]init];
    foodDetail[@"foodName"]=@"Streamed Groundnuts";
    foodDetail[@"servings"]=@"3";
    foodDetail[@"foodImage"]=@"food1.jpg";
    foodDetail[@"caloriesConsumed"]=@"226 Cal";
    [foodsList addObject:foodDetail];
    
    foodDetail=[[NSMutableDictionary alloc]init];
    foodDetail[@"foodName"]=@"Shawarma";
    foodDetail[@"servings"]=@"4";
    foodDetail[@"foodImage"]=@"food3.jpg";
    foodDetail[@"caloriesConsumed"]=@"789 Cal";
    [foodsList addObject:foodDetail];
    
    foodDetail=[[NSMutableDictionary alloc]init];
    foodDetail[@"foodName"]=@"Biriyani";
    foodDetail[@"servings"]=@"2";
    foodDetail[@"foodImage"]=@"food2.jpg";
    foodDetail[@"caloriesConsumed"]=@"658 Cal";
    [foodsList addObject:foodDetail];
    
    foodDetail=[[NSMutableDictionary alloc]init];
    foodDetail[@"foodName"]=@"Chicken 65";
    foodDetail[@"servings"]=@"10";
    foodDetail[@"foodImage"]=@"food1.jpg";
    foodDetail[@"caloriesConsumed"]=@"478 Cal";
    [foodsList addObject:foodDetail];
}
- (IBAction)next:(id)sender {
    
    UIViewController *initialvc=[self.storyboard  instantiateViewControllerWithIdentifier:@"MyFoodDetailViewController"];
    MyFoodDetailViewController *fd=(MyFoodDetailViewController*)initialvc;
    fd.foodDetail=foodDetail;
    [self.navigationController pushViewController:initialvc animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        
        return [foodsSearchList count];
    }
    else
        return [foodsList count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 62.0f;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyFoodDetailTableViewCell *cell=(MyFoodDetailTableViewCell *)[self.foodItemList dequeueReusableCellWithIdentifier:@"MyFoodDetailTableViewCell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[MyFoodDetailTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyFoodDetailTableViewCell"];
    }
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        foodDetail= [foodsSearchList objectAtIndex:indexPath.row];
    }
    else
    {
        foodDetail=foodsList[indexPath.row];
    }
    
    if ([foodDetail count]>0)
    {
        
        
        
        cell.foodName.text=foodDetail[@"foodName"];
   
        
        NSString *foodImageURL=foodDetail[@"foodImage"];
        cell.foodImage.image=[UIImage imageNamed:foodImageURL];
        
        cell.foodImage.layer.cornerRadius = 25;
        cell.foodImage.layer.masksToBounds = YES;
        cell.foodImage.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
        cell.foodImage.layer.borderWidth=1.0f;
        
        
        
        /*  [[[AsyncImageDownloader alloc] initWithMediaURL:foodImageURL successBlock:^(UIImage *image)  {
         [cell.foodImage setImage:image];
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
        foodDetail= [foodsSearchList objectAtIndex:indexPath.row];
       
    }
    else
    {
        foodDetail=foodsList[indexPath.row];
     
    }
    
    [self next:nil];
    
}



- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    [foodsSearchList removeAllObjects];
    
    
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"foodName CONTAINS[cd] %@",_searchBar.text];
    
    foodsSearchList = [[foodsList filteredArrayUsingPredicate:resultPredicate] mutableCopy];
    
    //    NSLog(@"group list %@",foodsSearchList);
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
