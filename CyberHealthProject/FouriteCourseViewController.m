//
//  FouriteCourseViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "FouriteCourseViewController.h"
#import "FouriteCourseTableViewCell.h"
#import "DetailedCourseViewController.h"
@interface FouriteCourseViewController ()

@end

@implementation FouriteCourseViewController

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
    
    [listDict setValue:@"Hamilton" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c1.png"] forKey:@"courseImage"];
    [listDict setValue:@"Foot Ball" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"25" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];
    [listDict setValue:@"1" forKey:@"purchasedStatus"];

    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Hamilton" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c2.png"] forKey:@"courseImage"];
    [listDict setValue:@"Learning" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"25" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];
    [listDict setValue:@"1" forKey:@"purchasedStatus"];

    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Britto" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c3.png"] forKey:@"courseImage"];
    [listDict setValue:@"Writing" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"100" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];
    [listDict setValue:@"1" forKey:@"purchasedStatus"];

    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Fedal" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c4.png"] forKey:@"courseImage"];
    [listDict setValue:@"Planing" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"70" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];
    [listDict setValue:@"1" forKey:@"purchasedStatus"];

    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Mark" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c5.png"] forKey:@"courseImage"];
    [listDict setValue:@"Computer" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"40" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];
    [listDict setValue:@"1" forKey:@"purchasedStatus"];

    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Antony" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c6.png"] forKey:@"courseImage"];
    [listDict setValue:@"LMS MOOC" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"30" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];
    [listDict setValue:@"1" forKey:@"purchasedStatus"];

    [listArray addObject:listDict];
    
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Mike" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c7.png"] forKey:@"courseImage"];
    [listDict setValue:@"Learnterest" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"50" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];
    [listDict setValue:@"1" forKey:@"purchasedStatus"];

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
        
        
        FouriteCourseTableViewCell *cell = (FouriteCourseTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"fvte" forIndexPath:indexPath];
        data_for_cell= [listArray objectAtIndex:indexPath.row];
        
        
            cell.courseImage.image=[data_for_cell valueForKey:@"courseImage"];
            cell.courseName.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"courseName"]];
            cell.authorName.text=[NSString stringWithFormat:@"Author Name: %@",[data_for_cell valueForKey:@"authorName"]];
            cell.desc.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"desc"]];
            cell.price.text=[NSString stringWithFormat:@"%@%@",[data_for_cell valueForKey:@"price"],@"$"];
            cell.downloads.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"downloads"]];
            cell.category.text=[NSString stringWithFormat:@"Category:%@",[data_for_cell valueForKey:@"category"]];
     
            
            
        
            
            
        
        cell.courseImage.layer.cornerRadius = 35;
        
        cell.courseImage.layer.masksToBounds = YES;
        
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
    
    
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detailed_course_storyboard" bundle:nil];
    DetailedCourseViewController * bController=[welcome instantiateViewControllerWithIdentifier:@"detail"];
    bController.delegate=self;
    NSDictionary *object = listArray[indexPath.row];
    [bController  setDetailItem:object];
    [self.navigationController pushViewController:bController animated:YES];
    
}

-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"title editing");
    
    
    data_for_cell= [listArray objectAtIndex:indexPath.row];
    
    
    btnTitle =@"Remove";
    
    //  NSLog(@"button title:;%@",btnTitle);
    return @"Remove";
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSLog(@"comit editing");
    NSLog(@"button title:;%@",btnTitle);
    
    data_for_cell= [listArray objectAtIndex:indexPath.row];
    object = listArray[indexPath.row];
    
    
    if([btnTitle isEqualToString:@"Remove"])
    {
        
        
        [listArray removeObjectAtIndex:indexPath.row];
        [self.tableView reloadData];
        
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
