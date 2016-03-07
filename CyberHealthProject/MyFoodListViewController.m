//
//  MyFoodListViewController.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 24/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "MyFoodListViewController.h"

@interface MyFoodListViewController ()

@end

@implementation MyFoodListViewController
@synthesize  sectionTitleArray;
@synthesize sectionContentDict;
@synthesize arrayForBool;
@synthesize selectedDate;
- (void)viewDidLoad {
    [super viewDidLoad];
      self.navigationController.topViewController.navigationItem.title=@"My Food List";
    
    UIButton*showCalendarButton=[[UIButton alloc]initWithFrame:CGRectMake(2, 2, 30, 30)];
    [showCalendarButton setBackgroundImage:[UIImage imageNamed:@"calendarIcon.png"] forState:UIControlStateNormal];
    [showCalendarButton addTarget:self action:@selector(showCalendar:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *showCalendar=[[UIBarButtonItem alloc]initWithCustomView:showCalendarButton];
    
    
    self.navigationController.topViewController.navigationItem.rightBarButtonItem=showCalendar;
    
    VRGCalendarView *calendar = [[VRGCalendarView alloc] init];
    calendar.delegate=self;
    [self.calendarView addSubview:calendar];
    self.calendarView.hidden=YES;
    selectedDate=[NSDate date];
//    UIBarButtonItem *goalShare=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(showGoalShare:)];
//    
//    self.navigationController.topViewController.navigationItem.leftBarButtonItem=goalShare;
//    //  [self displayLabel];
//    
//    self.navigationController.topViewController.navigationItem.hidesBackButton=NO;
//    // self.navigationItem.backBarButtonItem.title = @" ";
//    
//    self.navigationItem.leftItemsSupplementBackButton = YES;
    
    sectionTitleArray=[[NSMutableArray alloc]initWithObjects:@"Breakfast",@"Morning Snacks",@"Lunch",@"Evening Snacks",@"Dinner", nil];
    arrayForBool=[[NSMutableArray alloc]init];
    NSMutableArray *array=[[NSMutableArray alloc]initWithObjects:@"Ground Nut",@"Milk",@"Idly", nil];
    sectionContentDict=[[NSMutableDictionary alloc]initWithObjectsAndKeys:
                        array,@"Breakfast",
                        array,@"Morning Snacks",
                        array,@"Lunch",
                       array,@"Evening Snacks",
                       array,@"Dinner",nil];
  
   
    [arrayForBool insertObject:[NSNumber numberWithBool:NO] atIndex:0];
    [arrayForBool insertObject:[NSNumber numberWithBool:NO] atIndex:1];
    [arrayForBool insertObject:[NSNumber numberWithBool:NO] atIndex:2];
    [arrayForBool insertObject:[NSNumber numberWithBool:NO] atIndex:3];
    [arrayForBool insertObject:[NSNumber numberWithBool:NO] atIndex:4];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)showCalendar:(id)sender
{
        CGRect frame = self.calendarView.frame;
    
    frame.origin.x=0;
    frame.origin.y=64;

    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:1.0f];
    self.calendarView.hidden=NO;
     self.calendarView.frame=frame;
    [UIView commitAnimations];
    
    
}
-(void)addFoodItem:(id)sender
{
    UIViewController *initialvc=[self.storyboard  instantiateViewControllerWithIdentifier:@"AddFoodViewController"];
    [self.navigationController pushViewController:initialvc animated:YES];
}
- (IBAction)showData:(id)sender {
    CGRect frame = self.calendarView.frame;
    frame.origin.x=0;
    frame.origin.y=-500;
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1.0];
    
    self.calendarView.frame=frame;
  //  self.calendarView.hidden=YES;
    [UIView commitAnimations];
}





#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //  NSLog(@"[sectionTitleArray count] %lu",(unsigned long)[sectionTitleArray count]);
    return [sectionTitleArray count];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if ([[arrayForBool objectAtIndex:section] boolValue]) {
        return [[sectionContentDict valueForKey:[sectionTitleArray objectAtIndex:section]] count];
    }
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *majorView              = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 43)];
    UIView *headerView              = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-49, 43)];
     UIView *sideView  = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width-49, 0, 49, 43)];
    UIImageView *sectionImage              = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 25, 25)];
    
    headerView.tag                  = section;
    if (section==0) {
       headerView.backgroundColor      = [UIColor colorWithRed:246/255.0f green:36/255.0f blue:89/255.0f alpha:0.5f];
         sideView.backgroundColor      = [UIColor colorWithRed:246/255.0f green:36/255.0f blue:89/255.0f alpha:1.0f];
        [sectionImage setImage:[UIImage imageNamed:@"breakfast.png"]];
    }
    if (section==1) {
        headerView.backgroundColor      = [UIColor colorWithRed:22/255.0f green:128/255.0f blue:133/255.0f alpha:0.5f];
         sideView.backgroundColor      = [UIColor colorWithRed:22/255.0f green:128/255.0f blue:133/255.0f alpha:1.0f];
        [sectionImage setImage:[UIImage imageNamed:@"brunch.png"]];
    }
    if (section==2) {
        headerView.backgroundColor      = [UIColor colorWithRed:237/255.0f green:106/255.0f blue:14/255.0f alpha:0.5f];
        sideView.backgroundColor      = [UIColor colorWithRed:237/255.0f green:106/255.0f blue:14/255.0f alpha:1.0f];
        [sectionImage setImage:[UIImage imageNamed:@"lunch.png"]];
    }
    if (section==3) {
        headerView.backgroundColor      = [UIColor colorWithRed:27/255.0f green:237/255.0f blue:36/255.0f alpha:0.5f];
         sideView.backgroundColor      = [UIColor colorWithRed:27/255.0f green:237/255.0f blue:36/255.0f alpha:1.0f];
        [sectionImage setImage:[UIImage imageNamed:@"evening.png"]];
    }
    if (section==4) {
        headerView.backgroundColor      = [UIColor colorWithRed:73/255.0f green:190/255.0f blue:237/255.0f alpha:0.5f];
         sideView.backgroundColor      = [UIColor colorWithRed:73/255.0f green:190/255.0f blue:237/255.0f alpha:1.0f];
        [sectionImage setImage:[UIImage imageNamed:@"dinner.png"]];
    }
 //SECTION LABEL
    
    UILabel *headerString           = [[UILabel alloc] initWithFrame:CGRectMake(40, 10, self.view.frame.size.width-113, 24)];
    BOOL manyCells                  = [[arrayForBool objectAtIndex:section] boolValue];
    if (!manyCells) {
        headerString.text =[NSString stringWithFormat:@"%@ - %ld",[sectionTitleArray objectAtIndex:section],(long)section+1+200];
    }else{
        headerString.text =[NSString stringWithFormat:@"%@ - %ld",[sectionTitleArray objectAtIndex:section],(long)section+1+200];
    }
    headerString.textAlignment      = NSTextAlignmentLeft;
    headerString.textColor          = [UIColor blackColor];
   
    [headerView addSubview:headerString];
    //up or down arrow depending on the bool
    UIImageView *upDownArrow        = [[UIImageView alloc]init];
    
    if (manyCells) {
        [upDownArrow setImage:[UIImage imageNamed:@"upArrowBlack"]];
    }
    else
    {
        [upDownArrow setImage:[UIImage imageNamed:@"downArrowBlack"]];
    }
    
    upDownArrow.autoresizingMask    = UIViewAutoresizingFlexibleLeftMargin;
    
    upDownArrow.frame               = CGRectMake(self.view.frame.size.width-79, 10, 25, 25);
    
    upDownArrow.tag=section;
    
    [headerView addSubview:upDownArrow];
//SECTION IMAGE
    [headerView addSubview:sectionImage];
    
    UITapGestureRecognizer  *headerTapped   = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sectionHeaderTapped:)];
    [headerView addGestureRecognizer:headerTapped];
    
    UITapGestureRecognizer  *sideViewTapped   = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sideViewHeaderTapped:)];
    [sideView addGestureRecognizer:sideViewTapped];
    
    UIImageView *addButton        = [[UIImageView alloc]init];
    [addButton setImage:[UIImage imageNamed:@"addIconBlack.png"]];
    addButton.autoresizingMask    = UIViewAutoresizingFlexibleLeftMargin;
    addButton.tag=section;
    addButton.frame               = CGRectMake(10, 10, 25, 25);
    
    [sideView addSubview:addButton];
    
    
    
     [majorView addSubview:sideView];
     [majorView addSubview:headerView];
    return majorView;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *footer  = [[UIView alloc] initWithFrame:CGRectZero];
    return footer;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
   
    return 44;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
  
    
    return 65;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // you need to implement this method too or nothing will work:
    if (editingStyle == UITableViewCellEditingStyleDelete) {
      
        NSMutableArray *array=[sectionContentDict valueForKey:[sectionTitleArray objectAtIndex:indexPath.section]] ;
        NSLog(@"indexpath %d",indexPath.row);
        [array removeObjectAtIndex:indexPath.row];
     
    }
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES; //tableview must be editable or nothing will work...
}
// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"FoodConsumedList";
    FoodConsumedList *cell = (FoodConsumedList*)[self.foodConsumedTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(!cell) {
        cell = [[FoodConsumedList alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //cell.lecturetype.image=[UIImage imageNamed:nil];
    
    BOOL manyCells  = [[arrayForBool objectAtIndex:indexPath.section] boolValue];
    if (!manyCells)
    {
        cell.textLabel.text=@"";
        //cell.lecturetype.image=[UIImage imageNamed:nil];
        
    }
    else
    {
        
        UIFont *myFont = [UIFont fontWithName: @"Avenir Light" size: 18.0];
        cell.textLabel.font  = myFont;
        cell.textLabel.text=@"";
        
        NSArray *content = [sectionContentDict valueForKey:[sectionTitleArray objectAtIndex:indexPath.section]];
        cell.titleName.text =[NSString stringWithFormat:@"%@",[content objectAtIndex:indexPath.row]];
        cell.foodImage.image=[UIImage imageNamed:@"food1.jpg"];
        UIView *bgColorView = [[UIView alloc] init];
        bgColorView.backgroundColor = [UIColor colorWithRed:204/255.0f green:204/255.0f blue:204/255.0f alpha:0.5f];
        [cell setSelectedBackgroundView:bgColorView];
    }
    
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
   UIViewController *initialvc=[self.storyboard instantiateViewControllerWithIdentifier:@"MyFoodDetailViewController"];
   // MyFoodDetailViewController *MF=(MyFoodDetailViewController*)initialvc;
   // MF.foodDetail=[sectionContentDict valueForKey:sectionTitleArray[indexPath.row]];
    [self.navigationController pushViewController:initialvc animated:YES];
   
    
}

#pragma mark - gesture tapped
- (void)sectionHeaderTapped:(UITapGestureRecognizer *)gestureRecognizer{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:gestureRecognizer.view.tag];
    if (indexPath.row == 0) {
        
        BOOL collapsed  = [[arrayForBool objectAtIndex:indexPath.section] boolValue];
        collapsed       = !collapsed;
        [arrayForBool replaceObjectAtIndex:indexPath.section withObject:[NSNumber numberWithBool:collapsed]];
        
        //reload specific section animated
        NSRange range   = NSMakeRange(indexPath.section, 1);
        NSIndexSet *sectionToReload = [NSIndexSet indexSetWithIndexesInRange:range];
        [self.foodConsumedTableView reloadSections:sectionToReload withRowAnimation:UITableViewRowAnimationFade];
             
        
    }
}



- (void)sideViewHeaderTapped:(UITapGestureRecognizer *)gestureRecognizer{
    //gestureRecognizer.view.tag == 0 ||1 ||2 ||3||4
    UIViewController *initialvc=[self.storyboard  instantiateViewControllerWithIdentifier:@"AddFoodViewController"];
    [self.navigationController pushViewController:initialvc animated:YES];
}
#pragma mark- Calendar Delegate
-(void)calendarView:(VRGCalendarView *)calendarView switchedToMonth:(int)month targetHeight:(float)targetHeight animated:(BOOL)animated {
    if (month==[[NSDate date] month]) {
        NSArray *dates = [NSArray arrayWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:5], nil];
        // [calendarView markDates:dates];
    }
}

-(void)calendarView:(VRGCalendarView *)calendarView dateSelected:(NSDate *)date {
    NSLog(@"Selected date = %@",date);
    CGRect frame = self.calendarView.frame;
    frame.origin.x=0;
    frame.origin.y=-500;
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1.0];
    
    self.calendarView.frame=frame;
 //   self.calendarView.hidden=YES;
    [UIView commitAnimations];
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(void)dealloc

{
    [self.foodConsumedTableView setEditing:NO];
}
@end
