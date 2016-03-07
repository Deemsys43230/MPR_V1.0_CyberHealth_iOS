//
//  AddFriendViewController.m
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "AddFriendViewController.h"
#import "AddFriendTableViewCell.h"
//#import "FriendsProfileViewController.h"
#import "DetailGroupViewController.h"
@interface AddFriendViewController ()

@end

@implementation AddFriendViewController

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
    
    [listDict setValue:@"Hamilton" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"122" forKey:@"MutualFriends"];
    [listDict setValue:@"22/08/1963" forKey:@"dob"];
    [listDict setValue:@"OHIO USA" forKey:@"lives"];
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Mike Mike" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p1.jpeg"] forKey:@"profileImg"];
    [listDict setValue:@"50" forKey:@"MutualFriends"];
    [listDict setValue:@"13/11/1979" forKey:@"dob"];
    [listDict setValue:@"Canada" forKey:@"lives"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Jacob Jacob" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p2.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"100" forKey:@"MutualFriends"];
    [listDict setValue:@"06/12/1986" forKey:@"dob"];
    [listDict setValue:@"Australia" forKey:@"lives"];
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Britto Britto" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p3.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"150" forKey:@"MutualFriends"];
    [listDict setValue:@"05/05/1992" forKey:@"dob"];
    [listDict setValue:@"Japan" forKey:@"lives"];    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Fedal Fedal" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p4.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"198" forKey:@"MutualFriends"];
    [listDict setValue:@"16/02/1989" forKey:@"dob"];
    [listDict setValue:@"Sri lanka" forKey:@"lives"];
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Harrish Hari" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p8.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"200" forKey:@"MutualFriends"];
    [listDict setValue:@"18/07/1980" forKey:@"dob"];
    [listDict setValue:@"USA" forKey:@"lives"];
    [listArray addObject:listDict];
    
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Antony Ant" forKey:@"friendName"];
    [listDict setValue:[UIImage imageNamed:@"p6.jpg"] forKey:@"profileImg"];
    [listDict setValue:@"511" forKey:@"MutualFriends"];
    [listDict setValue:@"16/09/1990" forKey:@"dob"];
    [listDict setValue:@"India" forKey:@"lives"];
    [listArray addObject:listDict];
    
    
    UIBarButtonItem *save=[[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:self action:@selector(save)];
    self.navigationController.topViewController.navigationItem.rightBarButtonItem=save;
    
    UIBarButtonItem *close=[[UIBarButtonItem alloc]initWithTitle:@"Close" style:UIBarButtonItemStyleBordered target:self action:@selector(close)];
    self.navigationController.topViewController.navigationItem.leftBarButtonItem=close;

    
}



-(void)save{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

    
    
}
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
    
    return [listArray count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    @try {
        
        
        AddFriendTableViewCell *cell = (AddFriendTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"add" forIndexPath:indexPath];
        data_for_cell= [listArray objectAtIndex:indexPath.row];
        
        cell.profileImg.image=[data_for_cell valueForKey:@"profileImg"];
        cell.FriendName.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"friendName"]];
        cell.MutualFriends.text=[NSString stringWithFormat:@"%@ (Mutual friends)",[data_for_cell valueForKey:@"MutualFriends"]];
        cell.dob.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"dob"]];
        cell.lives.text=[NSString stringWithFormat:@"Lives in %@",[data_for_cell valueForKey:@"lives"]];
        
        
        cell.profileImg.layer.cornerRadius = 35;
        
        cell.profileImg.layer.masksToBounds = YES;
        
        
        
        
   /*     [cell setSelectionStyle:UITableViewCellSelectionStyleDefault];
        UIView *customColorView = [[UIView alloc] init];
        customColorView.backgroundColor =  [UIColor colorWithRed:255/255.0 green:70/255.0 blue:11/255.0 alpha:1.0];
        
        cell.selectedBackgroundView =  customColorView;*/
        
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
    
  
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
        cell.accessoryType = UITableViewCellAccessoryNone;
    } else {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
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
