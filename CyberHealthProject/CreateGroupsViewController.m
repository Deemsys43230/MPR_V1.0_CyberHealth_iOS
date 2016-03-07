//
//  CreateGroupsViewController.m
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "CreateGroupsViewController.h"
#import "CreateGroupsTableViewCell.h"
//#import "DetailGroupViewController.h"
@interface CreateGroupsViewController ()

@end

@implementation CreateGroupsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)setDetailItem:(NSDictionary *)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        
        NSLog(@"newDetailItem%@",newDetailItem);
        
        
        data_for_cell1= newDetailItem;
        
        NSLog(@"def==%@",[data_for_cell1 valueForKey:@"default"]);
        
        data_for_cell1=[data_for_cell1 valueForKey:@"default"];
        NSLog(@"data_for_cell1%@",data_for_cell1);

        NSLog(@"data_for_cell1%@",[data_for_cell1 valueForKey:@"groupName"]);
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.topViewController.title=@"Groups";
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;



    UIBarButtonItem *button =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addGroup)];
    self.navigationController.topViewController.navigationItem.rightBarButtonItem=button;
    self.navigationItem.leftItemsSupplementBackButton = YES;
    
    NSLog(@"didlpo");
    
    listArray=[[NSMutableArray alloc] init];
    
    requestStr=@"1";
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Excercise Centre" forKey:@"groupName"];
    [listDict setValue:[UIImage imageNamed:@"nature1.jpeg"] forKey:@"groupImage"];
    [listDict setValue:@"Mike" forKey:@"createdBy"];
    [listDict setValue:@"Exercises are like prose" forKey:@"status"];

    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Nature Guys Group" forKey:@"groupName"];
    [listDict setValue:[UIImage imageNamed:@"nature2.jpeg"] forKey:@"groupImage"];
    [listDict setValue:@"Jhon" forKey:@"createdBy"];
    [listDict setValue:@"Exercises are like prose" forKey:@"status"];
    
  
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Stars Group" forKey:@"groupName"];
    [listDict setValue:[UIImage imageNamed:@"nature3.jpg"] forKey:@"groupImage"];
    [listDict setValue:@"Britto" forKey:@"createdBy"];
    [listDict setValue:@"Exercises are like prose" forKey:@"status"];
    
  
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Playing Video games" forKey:@"groupName"];
    [listDict setValue:[UIImage imageNamed:@"nature1.jpeg"] forKey:@"groupImage"];
    [listDict setValue:@"Antony" forKey:@"createdBy"];
    [listDict setValue:@"Exercises are like prose" forKey:@"status"];
    
 
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Massage centre" forKey:@"groupName"];
    [listDict setValue:[UIImage imageNamed:@"nature2.jpeg"] forKey:@"groupImage"];
    [listDict setValue:@"Mark" forKey:@"createdBy"];
    [listDict setValue:@"Exercises are like prose" forKey:@"status"];
    
  
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Games like" forKey:@"groupName"];
    [listDict setValue:[UIImage imageNamed:@"nature3.jpg"] forKey:@"groupImage"];
    [listDict setValue:@"Lock" forKey:@"createdBy"];
    [listDict setValue:@"Exercises are like prose" forKey:@"status"];
    
   
    [listArray addObject:listDict];

    if (data_for_cell1>0) {
    
    listDict=[[NSMutableDictionary alloc]init];
    
        [listDict setValue:@"Body maker Centre" forKey:@"groupName"];
        [listDict setValue:[UIImage imageNamed:@"nature1.jpeg"] forKey:@"groupImage"];
        [listDict setValue:@"Harrish" forKey:@"createdBy"];
        [listDict setValue:@"Exercises are like prose" forKey:@"status"];
        
  
    
    [listArray addObject:listDict];
    }
    
    
   
    
   
}



- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
    self.navigationController.topViewController.title=@"Groups";
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;
    

    
    UIBarButtonItem *button =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addGroup)];
    self.navigationController.topViewController.navigationItem.rightBarButtonItem=button;
    self.navigationItem.leftItemsSupplementBackButton = YES;
    
    
    
}



-(void)nav_drawer{
    
    [[AppDelegate mainDelegate].slideMenuVC toggleMenu];
    
    
    
}

-(void)addGroup

{
    NSLog(@"add button clicked:");

 /*
        UIStoryboard *story=[UIStoryboard storyboardWithName:@"add_group_storyboard" bundle:nil];
     UIViewController *initialvc=[story instantiateInitialViewController];
     [self.navigationController pushViewController:initialvc animated:YES];
     */
    
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"add_group_storyboard" bundle:nil];
    UIViewController *initialvc=[welcome instantiateInitialViewController];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:initialvc];
    navController.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:navController animated:YES completion:nil];
    
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
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
        
        
        CreateGroupsTableViewCell *cell = (CreateGroupsTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"group" forIndexPath:indexPath];
        
    
            data_for_cell= [listArray objectAtIndex:indexPath.row];
        
        
               
        
        cell.groupImage.image=[data_for_cell valueForKey:@"groupImage"];
        cell.groupName.text=[data_for_cell valueForKey:@"groupName"];
        cell.createdBy.text=[NSString stringWithFormat:@"Created by: %@",[data_for_cell valueForKey:@"createdBy"]];
        cell.status.text=[data_for_cell valueForKey:@"status"];

        
        
        cell.groupImage.layer.cornerRadius = 32;
        
        cell.groupImage.layer.masksToBounds = YES;
        

        
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    
   UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detail_group_storyboard" bundle:nil];
    UIViewController *initialvc=[welcome instantiateInitialViewController];
    [self.navigationController pushViewController:initialvc animated:YES];
    
    
}

-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"title editing");
    
    
    data_for_cell= [listArray objectAtIndex:indexPath.row];
    
    
    btnTitle =@"Delete";
    
    //  NSLog(@"button title:;%@",btnTitle);
    return @"Delete";
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSLog(@"comit editing");
    NSLog(@"button title:;%@",btnTitle);
    
    data_for_cell= [listArray objectAtIndex:indexPath.row];
    object = listArray[indexPath.row];
    
    
    if([btnTitle isEqualToString:@"Delete"])
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
