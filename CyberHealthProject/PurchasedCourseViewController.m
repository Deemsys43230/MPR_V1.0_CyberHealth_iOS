//
//  PurchasedCourseViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "PurchasedCourseViewController.h"
#import "PurchasedCourseTableViewCell.h"
#import "DetailedCourseViewController.h"
@interface PurchasedCourseViewController ()

@end

@implementation PurchasedCourseViewController

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
    [listDict setValue:@"Games" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"25" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];
    [listDict setValue:@"1" forKey:@"purchasedStatus"];
    [listDict setValue:@"1" forKey:@"favouriteStatus"];

    
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
    [listDict setValue:@"1" forKey:@"favouriteStatus"];

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
    [listDict setValue:@"1" forKey:@"favouriteStatus"];

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
    [listDict setValue:@"1" forKey:@"favouriteStatus"];

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
    [listDict setValue:@"1" forKey:@"favouriteStatus"];

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
    [listDict setValue:@"1" forKey:@"favouriteStatus"];

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
    [listDict setValue:@"1" forKey:@"favouriteStatus"];

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
        
        
        PurchasedCourseTableViewCell *cell = (PurchasedCourseTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"purchase" forIndexPath:indexPath];
        data_for_cell= [listArray objectAtIndex:indexPath.row];
        
            cell.courseImage.image=[data_for_cell valueForKey:@"courseImage"];
            cell.courseName.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"courseName"]];
            cell.authorName.text=[NSString stringWithFormat:@"Author Name: %@",[data_for_cell valueForKey:@"authorName"]];
            cell.desc.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"desc"]];
            cell.price.text=[NSString stringWithFormat:@"%@%@",[data_for_cell valueForKey:@"price"],@"$"];
            cell.downloads.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"downloads"]];
            cell.category.text=[NSString stringWithFormat:@"Category:%@",[data_for_cell valueForKey:@"category"]];
        cell.starBtn.tag=indexPath.row;
        
        if ([[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"favouriteStatus"]] isEqualToString:@"0"])
        {
            [cell.starBtn setBackgroundImage:[UIImage imageNamed:@"whiteStar.png"] forState:UIControlStateNormal];
          //  [cell.starBtn setBackgroundColor:[UIColor redColor]];

        }
        
        else  if ([[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"favouriteStatus"]] isEqualToString:@"1"])
        {
            [cell.starBtn setBackgroundImage:[UIImage imageNamed:@"filledStar.png"] forState:UIControlStateNormal];
          //  [cell.starBtn setBackgroundColor:[UIColor greenColor]];
        }
        
        
        
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


-(IBAction)starBtn:(UIButton *)sender
{
    
    NSLog(@"Button values=%d",sender.tag);
    
    data_for_cell=[listArray objectAtIndex:sender.tag];
    
    if ([[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"favouriteStatus"]] isEqualToString:@"0"])
    {
        // [cell.starBtn setBackgroundImage:[UIImage imageNamed:@"whiteStar.png"] forState:UIControlStateNormal];
        [data_for_cell setValue:@"1" forKey:@"favouriteStatus"];
        
    }
    
    else  if ([[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"favouriteStatus"]] isEqualToString:@"1"])
    {
        [data_for_cell setValue:@"0" forKey:@"favouriteStatus"];
    }
    [self.tableView reloadData];
    
}



-(void) viewWillDisappear:(BOOL) animated
{
    [super viewWillDisappear:animated];
    if ([self isMovingFromParentViewController])
    {
        if (self.navigationController.delegate == self)
        {
            self.navigationController.delegate = nil;
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
