//
//  MainExerciseDairyViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/26/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "MainExerciseDairyViewController.h"
#import "MainExerciseDairyTableViewCell.h"
@interface MainExerciseDairyViewController ()

@end

@implementation MainExerciseDairyViewController

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
    
    self.navigationController.topViewController.title=@"Exercise Diary";

    
    
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

    
 //   self.navigationController.topViewController.title=@"All Courses";
//    UIImage *image = [UIImage imageNamed:@"menu-ico"];
//    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStyleBordered target:self action:@selector(nav_drawer)];
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=barButtonItem;
//    

    
      self.navigationItem.leftItemsSupplementBackButton = YES;
    
    
    UIBarButtonItem *button =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addGroup)];
    UIImage *imageCalender = [UIImage imageNamed:@"calender2.png"];
    UIBarButtonItem *barButtonItemCalender = [[UIBarButtonItem alloc] initWithImage:imageCalender style:UIBarButtonItemStylePlain target:self action:@selector(calender)];
    //   [self.navigationItem setRightBarButtonItem:barButtonItem];
    //  self.navigationController.topViewController.navigationItem.rightBarButtonItem=barButtonItem;
    
    self.navigationController.topViewController.navigationItem.rightBarButtonItems=[NSArray arrayWithObjects:button,barButtonItemCalender,nil];
    
    VRGCalendarView *calendar = [[VRGCalendarView alloc] init];
    calendar.delegate=self;
    [self.calenderView addSubview:calendar];
    
    calenderValue=0;
    
}
-(void)nav_drawer{
    
    [[AppDelegate mainDelegate].slideMenuVC toggleMenu];
        
    
}
-(void)calendarView:(VRGCalendarView *)calendarView switchedToMonth:(int)month targetHeight:(float)targetHeight animated:(BOOL)animated {
    //    if (month==[[NSDate date] month]) {
    //        NSArray *dates = [NSArray arrayWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:5], nil];
    //        [calendarView markDates:dates];
    //    }
}

-(void)calendarView:(VRGCalendarView *)calendarView dateSelected:(NSDate *)date {
    NSLog(@"Selected date = %@",date);
    
    calenderValue=1;
   [self calender];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(void)calender{
    
    
    NSLog(@"calender clicked:");
    
    if (calenderValue==0) {
        
        calenderValue=1;
        CGRect frame = self.calenderView.frame;
        
        frame.origin.x=0;
        frame.origin.y=64;
        
        
        [UIView beginAnimations:nil context:nil];
        
        [UIView setAnimationDuration:1.0];
        
        self.calenderView.frame=frame;
        
        [UIView commitAnimations];
        
        
        
        
    }
    
    
    else if(calenderValue==1){
        
        calenderValue=0;
        
        CGRect frame = self.calenderView.frame;
        frame.origin.x=0;
        frame.origin.y=-500;
        
        
        [UIView beginAnimations:nil context:nil];
        
        [UIView setAnimationDuration:1.0];
        
        self.calenderView.frame=frame;
        
        [UIView commitAnimations];
        
    }
    
    
    
}


-(void)addGroup

{
    NSLog(@"add button clicked:");
    
    /*
     UIStoryboard *story=[UIStoryboard storyboardWithName:@"add_group_storyboard" bundle:nil];
     UIViewController *initialvc=[story instantiateInitialViewController];
     [self.navigationController pushViewController:initialvc animated:YES];
     */
    
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"main_exercise_storyboard" bundle:nil];
    UIViewController *initialvc=[welcome instantiateViewControllerWithIdentifier:@"add"];
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
        
        
        MainExerciseDairyTableViewCell *cell = (MainExerciseDairyTableViewCell*)[self.tableView dequeueReusableCellWithIdentifier:@"exercise" forIndexPath:indexPath];
        
       
            data_for_cell= [listArray objectAtIndex:indexPath.row];
        
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
    
    // UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detailed_course_storyboard" bundle:nil];
    // UIViewController *initialvc=[welcome instantiateInitialViewController];
    // [self.navigationController pushViewController:initialvc animated:YES];
    
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"main_exercise_storyboard" bundle:nil];
    UIViewController *initialvc=[story instantiateViewControllerWithIdentifier:@"detail"];
    [self.navigationController pushViewController:initialvc animated:YES];
    
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
