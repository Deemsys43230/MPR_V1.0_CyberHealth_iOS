//
//  AllCoursesViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/20/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "AllCoursesViewController.h"
#import "AllCoursesTableViewCell.h"
#import "DetailedCourseViewController.h"
#import "KxMenu.h"
#import "ForumMainDetailViewController.h"
@interface AllCoursesViewController ()

@end

@implementation AllCoursesViewController

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
    
    
    self.navigationController.topViewController.title=@"All Courses";
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;

   
    
    listArray=[[NSMutableArray alloc] init];
    
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Hamilton" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c1.png"] forKey:@"courseImage"];
    [listDict setValue:@"Games" forKey:@"courseName"];
    [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"25" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];

    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Hamilton" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c2.png"] forKey:@"courseImage"];
    [listDict setValue:@"Learning" forKey:@"courseName"];
 [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"25" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];

    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Britto" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c3.png"] forKey:@"courseImage"];
    [listDict setValue:@"Writing" forKey:@"courseName"];
 [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"100" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];

    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Fedal" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c4.png"] forKey:@"courseImage"];
    [listDict setValue:@"Planing" forKey:@"courseName"];
 [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"70" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];

    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Mark" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c5.png"] forKey:@"courseImage"];
    [listDict setValue:@"Computer" forKey:@"courseName"];
 [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"40" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];

    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Antony" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c6.png"] forKey:@"courseImage"];
    [listDict setValue:@"LMS MOOC" forKey:@"courseName"];
 [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"30" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Sports" forKey:@"category"];

    [listArray addObject:listDict];
    
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Mike" forKey:@"authorName"];
    [listDict setValue:[UIImage imageNamed:@"c7.png"] forKey:@"courseImage"];
    [listDict setValue:@"Learnterest" forKey:@"courseName"];
 [listDict setValue:@"Google Chrome can’t display the webpage because your computer isn’t connected." forKey:@"desc"];
    [listDict setValue:@"50" forKey:@"price"];
    [listDict setValue:@"1225" forKey:@"downloads"];
    [listDict setValue:@"Studies" forKey:@"category"];

    [listArray addObject:listDict];
    
    filteredContentList = [[NSMutableArray alloc] init];


    
  /*  UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(-5.0, 30.0, 320.0, 44.0)];
    searchBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    UIView *searchBarView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 310.0, 44.0)];
    searchBarView.autoresizingMask = 0;
    searchBar.delegate = self;
    [searchBarView addSubview:searchBar];
    self.navigationItem.titleView = searchBarView;
    
    */
    self.searchBar.placeholder=@"Search by course name";

    [self addNavigationBarButton];
}
-(void)nav_drawer{
    
    [[AppDelegate mainDelegate].slideMenuVC toggleMenu];
    
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //initData
    
    NSLog(@"view will appear called");
    
    self.navigationController.topViewController.title=@"All Courses";
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;
//    
//    
//    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:255/255.0 green:70/255.0 blue:11/255.0 alpha:1]] ;
//    [self.navigationController.navigationBar  setTintColor:[UIColor whiteColor]];
//    
//    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    [self addNavigationBarButton];

  

    

    
    
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
- (void) pushMenuItem:(id)sender
{
    [self.tableView setEditing: NO animated: YES];
    
    NSString *title = [(KxMenuItem *)sender title];
    
    if([title isEqualToString:@"By course name"]){
        
        self.searchBar.placeholder=@"Search by course name";
    }
    else if([title isEqualToString:@"By category name"]){
    
        self.searchBar.placeholder=@"Search by category name";

    }
  
    
    
    
}

- (void)hidesomeMenuItems:(UIButton*)sender
{
    
    
    NSArray *menuItems =
    @[
      
      [KxMenuItem menuItem:@" "
                     image:nil
                    target:nil
                    action:@selector(pushMenuItem:)],
      
      //      [KxMenuItem menuItem:@"Pay"
      //                     image:[UIImage imageNamed:@"action_icon"]
      //                    target:self
      //                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"Send Invoice"
                     image:nil
                    target:self
                    action:@selector(pushMenuItem:)],
      
      //      [KxMenuItem menuItem:@"Write-off"
      //                     image:[UIImage imageNamed:@"reload"]
      //                    target:self
      //                    action:@selector(pushMenuItem:)],
      
      
      ];
    
    KxMenuItem *first = menuItems[0];
    first.foreColor = [UIColor colorWithRed:47/255.0f green:112/255.0f blue:225/255.0f alpha:1.0];
    first.alignment = NSTextAlignmentCenter;
    
    [KxMenu showMenuInView:self.view
                  fromRect:sender.frame
                 menuItems:menuItems];
    
}

- (void)showMenu:(UIButton *)sender
{
    NSArray *menuItems =
    @[
      
      [KxMenuItem menuItem:@" "
                     image:nil
                    target:nil
                    action:@selector(pushMenuItem:)],
      
      //      [KxMenuItem menuItem:@"Pay"
      //                     image:[UIImage imageNamed:@"action_icon"]
      //                    target:self
      //                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"By course name"
                     image:nil
                    target:self
                    action:@selector(pushMenuItem:)],
      
      //      [KxMenuItem menuItem:self.RequestStatusName
      //                     image:[UIImage imageNamed:@"reload"]
      //                    target:self
      //                    action:@selector(pushMenuItem:)],
      [KxMenuItem menuItem:@"By category name"
                     image:[UIImage imageNamed:@"reload"]
                    target:self
                    action:@selector(pushMenuItem:)],
//      [KxMenuItem menuItem:@"Add Discount"
//                     image:[UIImage imageNamed:@"reload"]
//                    target:self
//                    action:@selector(pushMenuItem:)],
//      [KxMenuItem menuItem:@"Add Tax"
//                     image:[UIImage imageNamed:@"reload"]
//                    target:self
//                    action:@selector(pushMenuItem:)],
      //      [KxMenuItem menuItem:@"Write-off"
      //                     image:[UIImage imageNamed:@"reload"]
      //                    target:self
      //                    action:@selector(pushMenuItem:)],
      
      
      ];
    
    KxMenuItem *first = menuItems[0];
    first.foreColor = [UIColor colorWithRed:47/255.0f green:112/255.0f blue:225/255.0f alpha:1.0];
    first.alignment = NSTextAlignmentCenter;
    
    [KxMenu showMenuInView:self.view
                  fromRect:sender.frame
                 menuItems:menuItems];
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
        
        
        AllCoursesTableViewCell *cell = (AllCoursesTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"all" forIndexPath:indexPath];
        
        if (isSearching) {
            data_for_cell= [filteredContentList objectAtIndex:indexPath.row];
        }
        else {
        data_for_cell= [listArray objectAtIndex:indexPath.row];
        }
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
    
 /*   UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detailed_course_storyboard" bundle:nil];
    DetailedCourseViewController * bController=[welcome instantiateViewControllerWithIdentifier:@"detail"];
    bController.delegate=self;
    NSDictionary *object;
    if (isSearching) {
        object = filteredContentList[indexPath.row];

    }
    else {
        object = listArray[indexPath.row];

    }

    [bController  setDetailItem:object];
    [self.navigationController pushViewController:bController animated:YES];
  */
    
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detailed_course_storyboard" bundle:nil];
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
        
        
        if([searchBar.placeholder isEqualToString:@"Search by course name"]){
        NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"courseName CONTAINS[cd] %@",_searchBar.text];
        
        filteredContentList = [[listArray filteredArrayUsingPredicate:resultPredicate] mutableCopy];
        }
       else  if([searchBar.placeholder isEqualToString:@"Search by category name"]){
            NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"category CONTAINS[cd] %@",_searchBar.text];
            
            filteredContentList = [[listArray filteredArrayUsingPredicate:resultPredicate] mutableCopy];
        }
        
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
