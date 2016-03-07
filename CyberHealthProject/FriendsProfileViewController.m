//
//  FriendsProfileViewController.m
//  MyFriends
//
//  Created by deemsys on 6/16/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "FriendsProfileViewController.h"
@interface FriendsProfileViewController ()

@end

@implementation FriendsProfileViewController

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
    
    self.navigationController.topViewController.title=@"Profile";


    
 //   self.proImage.image=[data_for_cell valueForKey:@"proImage"];
  //  self.name.text=[data_for_cell valueForKey:@"friendName"];


  /*  listArray=[[NSMutableArray alloc] init];
    
    
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Henry" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p1.jpeg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];

    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Melina" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p2.jpg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Harry" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p3.jpg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];
    
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Udaouna" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p4.jpg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    
    [listDict setValue:@"Mark" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];

    
    
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Praveena" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p6.jpg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Annamika" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p7.jpg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Alex" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p8.jpg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];
    
    [listArray addObject:listDict];
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Chinnu" forKey:@"name"];
    [listDict setValue:[UIImage imageNamed:@"p9.jpg"] forKey:@"proImage"];
    [listDict setValue:@"USA" forKey:@"place"];
    [listDict setValue:@"Health Care Record" forKey:@"desc"];
    
    [listArray addObject:listDict];
    
    */
    self.proImage.layer.cornerRadius = 38;
    
    self.proImage.layer.masksToBounds = YES;
    
    
    
    
/*    // keyboard dismiss::
    _tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapAnywhere:)];
    //  _tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:_tapRecognizer];
    
    
    */
}

/*
- (void)didTapAnywhere:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
    
    CATransition *animation = [CATransition animation];
    animation.duration = 1.0;
    animation.type = kCATransitionFade;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [self.name.layer addAnimation:animation forKey:@"changeTextTransition"];
    
    // Change the text
    self.name.text = @"values";

}

*/



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