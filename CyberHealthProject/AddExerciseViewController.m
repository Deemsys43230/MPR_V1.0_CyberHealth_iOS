//
//  AddExerciseViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/26/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "AddExerciseViewController.h"
#import "AddExerciseTableViewCell.h"
@interface AddExerciseViewController ()

@end

@implementation AddExerciseViewController

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
    
    [listDict setValue:@"Yoga" forKey:@"exersiseName"];
    [listDict setValue:@"123" forKey:@"intakeCalorie"];
    [listDict setValue:@"5" forKey:@"hours"];
    [listDict setValue:[UIImage imageNamed:@"ex8.jpg"] forKey:@"image"];
    
    [listArray addObject:listDict];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Suriya Namaskar" forKey:@"exersiseName"];
    [listDict setValue:@"145" forKey:@"intakeCalorie"];
    [listDict setValue:@"2" forKey:@"hours"];
    [listDict setValue:[UIImage imageNamed:@"ex7.jpg"] forKey:@"image"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Running" forKey:@"exersiseName"];
    [listDict setValue:@"53" forKey:@"intakeCalorie"];
    [listDict setValue:@"2" forKey:@"hours"];
    [listDict setValue:[UIImage imageNamed:@"ex6.jpg"] forKey:@"image"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Swimming" forKey:@"exersiseName"];
    [listDict setValue:@"100" forKey:@"intakeCalorie"];
    [listDict setValue:@"4" forKey:@"hours"];
    [listDict setValue:[UIImage imageNamed:@"ex5.jpg"] forKey:@"image"];
    
    [listArray addObject:listDict];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Jumping" forKey:@"exersiseName"];
    [listDict setValue:@"112" forKey:@"intakeCalorie"];
    [listDict setValue:@"8" forKey:@"hours"];
    [listDict setValue:[UIImage imageNamed:@"ex4.jpg"] forKey:@"image"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Curling" forKey:@"exersiseName"];
    [listDict setValue:@"156" forKey:@"intakeCalorie"];
    [listDict setValue:@"6" forKey:@"hours"];
    [listDict setValue:[UIImage imageNamed:@"ex3.jpg"] forKey:@"image"];
    
    [listArray addObject:listDict];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Fencing" forKey:@"exersiseName"];
    [listDict setValue:@"145" forKey:@"intakeCalorie"];
    [listDict setValue:@"5" forKey:@"hours"];
    [listDict setValue:[UIImage imageNamed:@"ex1.jpg"] forKey:@"image"];
    
    [listArray addObject:listDict];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Cycling" forKey:@"exersiseName"];
    [listDict setValue:@"561" forKey:@"intakeCalorie"];
    [listDict setValue:@"12" forKey:@"hours"];
    [listDict setValue:[UIImage imageNamed:@"ex2.jpg"] forKey:@"image"];
    
    [listArray addObject:listDict];
    
    filteredContentList = [[NSMutableArray alloc] init];

    
    
   /* UIBarButtonItem *save=[[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(save)];
    self.navigationController.topViewController.navigationItem.rightBarButtonItem=save;*/
    
    UIBarButtonItem *close=[[UIBarButtonItem alloc]initWithTitle:@"Close" style:UIBarButtonItemStyleBordered target:self action:@selector(close)];
    self.navigationController.topViewController.navigationItem.leftBarButtonItem=close;
  
    
}
/*
-(void)save{
    
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    
}*/
-(void)close{
    
    
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    
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
        
        
        AddExerciseTableViewCell *cell = (AddExerciseTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"add" forIndexPath:indexPath];
        
        
        if (isSearching) {
            data_for_cell= [filteredContentList objectAtIndex:indexPath.row];
        }
        else {
            data_for_cell= [listArray objectAtIndex:indexPath.row];
        }
        cell.exersiseName.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"exersiseName"]];
        cell.intakeCalorie.text=[NSString stringWithFormat:@"Calorie burned:%@",[data_for_cell valueForKey:@"intakeCalorie"]];
        cell.hours.text=[NSString stringWithFormat:@"%@ hours 15 min",[data_for_cell valueForKey:@"hours"]];
        cell.IV.image=[data_for_cell valueForKey:@"image"];
        
        cell.IV.layer.cornerRadius = 30;
        
        cell.IV.layer.masksToBounds = YES;
        
        [cell setSelectionStyle:UITableViewCellSelectionStyleDefault];
        UIView *customColorView = [[UIView alloc] init];
        customColorView.backgroundColor =  [UIColor colorWithRed:255/255.0 green:70/255.0 blue:11/255.0 alpha:1.0];
        
        cell.selectedBackgroundView =  customColorView;
        
        return cell;
    }
    @catch (NSException *exception) {
        NSLog(@"exception::%@",exception);
    }
    
    
}
/*- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 return 60.0f;
 }
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    
   // [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
//    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    
    
   /* UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"main_exercise_storyboard" bundle:nil];
    UIViewController *initialvc=[welcome instantiateViewControllerWithIdentifier:@"detail"];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:initialvc];
    navController.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:navController animated:YES completion:nil];*/
    
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"main_exercise_storyboard" bundle:nil];
    UIViewController *initialvc=[story instantiateViewControllerWithIdentifier:@"detail"];
    [self.navigationController pushViewController:initialvc animated:YES];
    
    
    
    

}





/*
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
}
*/



/*===search code ===*/

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    
    
    isSearching = NO;
    
    
    self.searchBar.showsCancelButton = YES;
    
    for (UIView *subView in searchBar.subviews) {
        if ([subView isKindOfClass:[UIButton class]]) {
            UIButton *cancelButton = (UIButton*)subView;
            
            [cancelButton setTitle:@"hi" forState:UIControlStateNormal];
        }
    }
    self.searchBar.autocorrectionType = UITextAutocorrectionTypeNo;
    UITextField *textField = [self.searchBar valueForKey:@"_searchField"];
    
    textField.clearButtonMode = UITextFieldViewModeNever;
    
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    NSLog(@"Text change - %d",isSearching);
    
    for (UIView *subview in searchBar.subviews)
    {
        if ([subview conformsToProtocol:@protocol(UITextInputTraits)])
        {
            [(UITextField *)subview setClearButtonMode:UITextFieldViewModeNever];
        }
    }
    //Remove all objects first.
    [filteredContentList removeAllObjects];
    
    if([searchText length] != 0) {
        isSearching = YES;
        //  [self searchTableList];
        
        
                    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"exersiseName CONTAINS[cd] %@",_searchBar.text];
            
            filteredContentList = [[listArray filteredArrayUsingPredicate:resultPredicate] mutableCopy];
       
        
    }
    else {
        isSearching = NO;
        // [searchBar resignFirstResponder];
        
        
    }
    //  [self.tableView reloadData];
    //  [searchBar resignFirstResponder];
    
    [self.tableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:NO];
    
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"Cancel clicked");
    self.searchBar.text=@"";
    [searchBar resignFirstResponder];
    isSearching=NO;
    [self.tableView reloadData];
    
    
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"Search Clicked");
    // [self searchTableList];
    //
    
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
