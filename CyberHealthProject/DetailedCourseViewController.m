//
//  DetailedCourseViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "DetailedCourseViewController.h"

@interface DetailedCourseViewController ()

@end

@implementation DetailedCourseViewController
@synthesize imageArray;
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
        
        
        data_for_cell= newDetailItem;
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    favoBtnStr=@"1";
    
    [self.favoBtn setBackgroundColor:[UIColor colorWithRed:255/255.0 green:70/255.0 blue:11/255.0 alpha:1.0]];
    [self.favoBtn setTitle:@"Purchase Course" forState:UIControlStateNormal];


    self.aboutAuthorText.text=
    @"The author name is Jack.The author born on 17/02/1992.Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
    
    
    self.aboutCourseText.text=
    @"The Course rate is 15$.Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";

    self.courseName.text=[data_for_cell valueForKey:@"courseName"];
    self.desc.text=[data_for_cell valueForKey:@"desc"];
    self.authorName.text=[data_for_cell valueForKey:@"authorName"];
    self.category.text=[data_for_cell valueForKey:@"category"];
    self.price.text=[NSString stringWithFormat:@"%@$",[data_for_cell valueForKey:@"price"]];

    if ([[data_for_cell valueForKey:@"purchasedStatus"] isEqualToString:@"1"]) {
        
        
        [self.favoBtn setBackgroundColor:[UIColor darkGrayColor]];
        [self.favoBtn setTitle:@"Explore Course" forState:UIControlStateNormal];
        
    }else{
        [self.favoBtn setBackgroundColor:[UIColor colorWithRed:255/255.0 green:70/255.0 blue:11/255.0 alpha:1.0]];
        [self.favoBtn setTitle:@"Purchase Course" forState:UIControlStateNormal];
    
    
    
    }
    
}




-(IBAction)favoBtn:(id)sender{

    
    
    
    if ([[data_for_cell valueForKey:@"purchasedStatus"] isEqualToString:@"1"]) {
        
        
        [self.favoBtn setBackgroundColor:[UIColor darkGrayColor]];
        [self.favoBtn setTitle:@"Explore Course" forState:UIControlStateNormal];
       // SimpleExampleViewController  *simple=[[SimpleExampleViewController alloc] initWithNibName:@"SimpleExampleViewController" bundle:nil];
      //  [self.navigationController pushViewController:simple animated:YES];
        
        UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detail_course_storyboard" bundle:nil];
        UIViewController *initialvc=[welcome instantiateInitialViewController];
        [self.navigationController pushViewController:initialvc animated:YES];
        


        
    }else{
    if ([favoBtnStr isEqualToString:@"1"]) {
        
        favoBtnStr=@"2";
        [self.favoBtn setBackgroundColor:[UIColor darkGrayColor]];
        [self.favoBtn setTitle:@"Explore Course" forState:UIControlStateNormal];
        
    }
else  if ([favoBtnStr isEqualToString:@"2"]) {
        
    favoBtnStr=@"1";
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"detail_course_storyboard" bundle:nil];
    UIViewController *initialvc=[welcome instantiateInitialViewController];
    [self.navigationController pushViewController:initialvc animated:YES];

        [self.favoBtn setBackgroundColor:[UIColor colorWithRed:255/255.0 green:70/255.0 blue:11/255.0 alpha:1.0]];
        [self.favoBtn setTitle:@"Purchase Course" forState:UIControlStateNormal];
    
    

 //   SimpleExampleViewController  *simple=[[SimpleExampleViewController alloc] initWithNibName:@"SimpleExampleViewController" bundle:nil];
  //  [self.navigationController pushViewController:simple animated:YES];

    }

    
    }


}

-(IBAction)aboutSegment:(id)sender{
    
    if(self.aboutSegment.selectedSegmentIndex==0)
    {
        self.aboutCourseView.hidden=NO;
        self.aboutAuthorView.hidden=YES;

    
    }
    else if(self.aboutSegment.selectedSegmentIndex==1)
    {
        self.aboutCourseView.hidden=YES;
        self.aboutAuthorView.hidden=NO;

        
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
