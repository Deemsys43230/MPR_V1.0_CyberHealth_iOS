//
//  HKMenuView.m
//  SlideMenu3D
//
//  Created by Edgar on 4/6/15.
//  Copyright (c) 2015 @hunk. All rights reserved.
//

#import "HKMenuView.h"
#import "AppDelegate.h"


@interface HKMenuView (){
    NSArray *images;
    NSArray *titles;
}

@end

@implementation HKMenuView

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    images = @[@"friend@3x.png",@"courses@3x.png",@"fooddiary@3x.png",@"exercisediary@3x.png",@"expert@3x.png",@"goals@3x.png",@"graphs@3x.png",@"forums@3x.png",@"doctor@3x.png",@"payments@3x.png",@"settings@3x.png"];
    titles = @[@"Friends",@"Courses",@"Food Diary",@"Exercise Diary",@"Experts",@"Goals",@"Graphs",@"Forums",@"Endocrinologist",@"Payments",@"Settings"];
    self.image.layer.cornerRadius=20;
    self.image.layer.masksToBounds=YES;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor clearColor];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return images.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"CellIdentifier";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [titles objectAtIndex:indexPath.row];
    
    //UIFont *currentFont = cell.textLabel.font;
    UIFont *correctFont = [UIFont fontWithName:@"Avenir" size:16];
    cell.textLabel.font = correctFont;
    
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.imageView.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]];
    cell.contentView.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
//    if (indexPath.row==8) {
//          UIFont *correctFont = [UIFont fontWithName:@"Avenir" size:16 ];
//            cell.textLabel.font = correctFont;
//        [cell.textLabel setTextColor:[UIColor colorWithRed:127/255 green:65/255 blue:5/255 alpha:1]];
//    }
    UIView *bgColorView = [[UIView alloc] init];
   
   bgColorView.backgroundColor = [UIColor colorWithRed:255/255.0f green:255/255.0f blue:255/255.0f alpha:0.2f];
     [cell setSelectedBackgroundView:bgColorView];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    [cell setBackgroundColor:[UIColor clearColor]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

  

    if(indexPath.row==0){
        
         self.menuName=@"friends_storyboard";

    }
    else if(indexPath.row==1){
  
       self.menuName=@"main_courses_storyboard";
    }
    
    else if(indexPath.row==2){
        self.menuName=@"MyFoodList";
    }
    else if(indexPath.row==3){
        
         self.menuName=@"main_exercise_storyboard";
    }
    
    else if(indexPath.row==4){
        
        self.menuName=@"experts";
        
    }
    else if(indexPath.row==5){
        
       
         self.menuName=@"UserGoals";
    }

    else if(indexPath.row==6){
        
     self.menuName=@"graphs";
        
    }
    else if(indexPath.row==7){
        
//        NSLog(@"Graphs");
     self.menuName=@"main_forum_storyboard";
        
    }
    else if(indexPath.row==8){
        
         self.menuName=@"endocrinologist";
        
    }
    else if(indexPath.row==9){
        
        self.menuName=@"payment";
       
        
    }
    else if(indexPath.row==10){
        
      self.menuName=@"Settings";
    
        
    }

      [[AppDelegate mainDelegate].slideMenuVC toggleMenu];
}

#pragma mark HKSlideMenu3DControllerDelegate methods
-(void)willOpenMenu{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)didOpenMenu{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)willCloseMenu{
    NSLog(@"%s", __PRETTY_FUNCTION__);
        [[NSNotificationCenter defaultCenter]postNotificationName:@"ChangeStoryBoard" object:self.menuName];
    self.menuName=@"";
}

-(void)didCloseMenu{
   

    NSLog(@"%s", __PRETTY_FUNCTION__);
}


@end
