//
//  MainForumViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "MainForumViewController.h"
#import "MainForumTableViewCell.h"
#import "ForumMainDetailViewController.h"

@interface MainForumViewController ()

@end

@implementation MainForumViewController

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
    
    self.navigationController.topViewController.title=@"Forums";
   // self.delegate=AppDelegate;

    listArray=[[NSMutableArray alloc] init];
    
    
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Sports" forKey:@"title"];
    [listDict setValue:@"Sports questions?." forKey:@"desc"];
    [listDict setValue:@"Antony" forKey:@"createdBy"];
    [listDict setValue:@"25/06/2015" forKey:@"createdOn"];
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Studies" forKey:@"title"];
    [listDict setValue:@"Studies questions?." forKey:@"desc"];
    [listDict setValue:@"Mike" forKey:@"createdBy"];
    [listDict setValue:@"25/06/2015" forKey:@"createdOn"];
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Economy" forKey:@"title"];
    [listDict setValue:@"Econmical questions?." forKey:@"desc"];
    [listDict setValue:@"Mark" forKey:@"createdBy"];
    [listDict setValue:@"25/06/2015" forKey:@"createdOn"];
    [listArray addObject:listDict];

    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"History" forKey:@"title"];
    [listDict setValue:@"Historical questions?." forKey:@"desc"];
    [listDict setValue:@"fedal" forKey:@"createdBy"];
    [listDict setValue:@"25/06/2015" forKey:@"createdOn"];
    [listArray addObject:listDict];

    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Sports" forKey:@"title"];
    [listDict setValue:@"Sports is a good entertainment." forKey:@"desc"];
    [listDict setValue:@"Britto" forKey:@"createdBy"];
    [listDict setValue:@"25/06/2015" forKey:@"createdOn"];
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Sports" forKey:@"title"];
    [listDict setValue:@"Sports is a good entertainment." forKey:@"desc"];
    [listDict setValue:@"Hony" forKey:@"createdBy"];
    [listDict setValue:@"25/06/2015" forKey:@"createdOn"];
    [listArray addObject:listDict];
   
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Sports" forKey:@"title"];
    [listDict setValue:@"Sports is a good entertainment." forKey:@"desc"];
    [listDict setValue:@"Antony" forKey:@"createdBy"];
    [listDict setValue:@"25/06/2015" forKey:@"createdOn"];
    [listArray addObject:listDict];

    UIBarButtonItem *button =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addGroup)];
    self.navigationItem.rightBarButtonItem=button;
    self.navigationItem.leftItemsSupplementBackButton = YES;

    
  //  [self addNavigationBarButton];
}
- (IBAction)menuAction:(id)sender {
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
    
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"add_forum_title_storyboard" bundle:nil];
    UIViewController *initialvc=[welcome instantiateInitialViewController];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:initialvc];
    navController.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:navController animated:YES completion:nil];
    
    
}



-(void)addNavigationBarButton{
    
    UIBarButtonItem *fixedItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixedItem.width = 20;
    
    
    
    UIButton *actionsButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0, 30,30)];
    [actionsButton setBackgroundImage:[UIImage imageNamed:@"search2.png"] forState:UIControlStateNormal];
    [actionsButton setTitle:@"" forState:UIControlStateNormal];
    [actionsButton setTitleColor:[UIColor colorWithRed:51/255.0 green:214/255.0 blue:133/255.0 alpha:1] forState:UIControlStateNormal];
    
    
    [actionsButton addTarget:self action:@selector(showMenu:)
            forControlEvents:UIControlEventTouchUpInside];
    self.tableView.userInteractionEnabled=YES;
    
    
    [actionsButton setShowsTouchWhenHighlighted:YES];
    //UIBarButtonItem *cancel1 = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(showMenu:)];
    UIBarButtonItem *navbutton1 =[[UIBarButtonItem alloc] initWithCustomView:actionsButton];
    
    [actionsButton setTitleColor:[UIColor colorWithRed:51/255.0 green:214/255.0 blue:133/255.0 alpha:1] forState:UIControlStateNormal];
    UIBarButtonItem *paymentsItem =[[UIBarButtonItem alloc] initWithTitle:@"Payments" style:UIBarButtonItemStyleBordered target:self action:@selector(showPayments:)];
    [ paymentsItem setTintColor:[UIColor colorWithRed:51/255.0 green:214/255.0 blue:133/255.0 alpha:1]];
    self.navigationItem.leftItemsSupplementBackButton = YES;
    
    [self.navigationController.topViewController.navigationItem setRightBarButtonItem:navbutton1];
    
    self.navigationController.topViewController.navigationItem.hidesBackButton=NO;
    
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
        
        
        MainForumTableViewCell *cell = (MainForumTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:@"forum" forIndexPath:indexPath];
        
       
            data_for_cell= [listArray objectAtIndex:indexPath.row];
        
        cell.title.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"title"]];
        cell.helloDesc.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"desc"]];
        cell.createdBy.text=[NSString stringWithFormat:@"Created By: %@",[data_for_cell valueForKey:@"createdBy"]];
        cell.createdOn.text=[NSString stringWithFormat:@"Created On:%@",[data_for_cell valueForKey:@"createdOn"]];
        
        
        
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
    
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detail_forum_storyboard" bundle:nil];
    ForumMainDetailViewController * bController=[welcome instantiateViewControllerWithIdentifier:@"detail"];
    bController.delegate=self;
    NSDictionary *object;
   
        object = listArray[indexPath.row];
    
    [bController  setDetailItem:object];
    
 //  self.delegate.titleStr=[object valueForKey:@"title"];
   
    [self.navigationController pushViewController:bController animated:YES];
    
    
    // UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detailed_course_storyboard" bundle:nil];
    // UIViewController *initialvc=[welcome instantiateInitialViewController];
    // [self.navigationController pushViewController:initialvc animated:YES];
    
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
