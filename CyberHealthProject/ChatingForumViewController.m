//
//  ChatingForumViewController.m
//  Cyber Health Care
//
//  Created by deemsys on 6/24/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "ChatingForumViewController.h"
#import "ChatingForumTableViewCell.h"
#define kOFFSET_FOR_KEYBOARD 80.0
#define COMMENT_LABEL_WIDTH 153
#define COMMENT_LABEL_MIN_HEIGHT 50
#define COMMENT_LABEL_PADDING 20



@interface ChatingForumViewController ()

@end

@implementation ChatingForumViewController

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
    self.sendText.delegate=self;
    
 
    
    [[self.sendText layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[self.sendText layer] setBorderWidth:1];
    [[self.sendText layer] setCornerRadius:10];
    
    listArray=[[NSMutableArray alloc] init];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"consectetaur cillium adipisicing pecu." forKey:@"message"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"image"];
    [listDict setValue:@"19/02/2015 06:15:53 PM" forKey:@"time"];

    [listArray addObject:listDict];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Sports" forKey:@"message"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"image"];
    [listDict setValue:@"17/02/2015 06:15:53 PM" forKey:@"time"];

    [listArray addObject:listDict];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Sports" forKey:@"message"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"image"];
    [listDict setValue:@"10/02/2015 06:15:53 PM" forKey:@"time"];

    [listArray addObject:listDict];
    
    
    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:@"Sports" forKey:@"message"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"image"];
    [listDict setValue:@"01/02/2015 06:15:53 PM" forKey:@"time"];

    [listArray addObject:listDict];
    
    [self.tableView setAllowsSelection:YES];
    
    //  self.tableView.estimatedRowHeight = 89;
    //self.tableView.rowHeight = UITableViewAutomaticDimension;
    //   self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    // keyboard dismiss::
    _tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapAnywhere:)];
    //  _tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:_tapRecognizer];
    
}
- (void)didTapAnywhere:(UITapGestureRecognizer *) sender
{
    //  [self animateTextField1:sender up:NO];
    
    [self.view endEditing:YES];
    
}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    [self animateTextField1:textView up:YES];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    
    [self animateTextField1:textView up:NO];
    
}

-(void)animateTextField1:(UITextView*)textField up:(BOOL)up
{
    const int movementDistance = -215; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? movementDistance : -movementDistance);
    
    [UIView beginAnimations: @"animateTextField" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.mainView.frame = CGRectOffset(self.mainView.frame, 0, movement);
    [UIView commitAnimations];
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
        
        
        cell = (ChatingForumTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:@"chating" forIndexPath:indexPath];
        
        
        data_for_cell= [listArray objectAtIndex:indexPath.row];
        if (cell != nil) {
            
            //   cell.msg.text=[NSString stringWithFormat:@"%@",[data_for_cell valueForKey:@"message"]];
            
            cell.image.image=[data_for_cell valueForKey:@"image"];
            
            
            cell.image.layer.cornerRadius = 24;
            
            cell.image.layer.masksToBounds = YES;
            
            cellValues=cell.msg.text;
            
            
            //   NSLog(@"Cell frame.size.width=%f", cell.msg.frame.size.height);
            
            //    hi=cell.msg.frame.size.height;
        
            cell.time.text=[[listArray objectAtIndex:indexPath.row]valueForKey:@"time"];
            
            cell.msg.numberOfLines = 0;
            
            cell.msg.font = [UIFont fontWithName:@"Avenir" size:12.0f];
            cell.msg.text = [[listArray objectAtIndex:indexPath.row]valueForKey:@"message"];
            [cell.msg sizeToFit];
            
            
            CGFloat labelHeight = [self getLabelHeightForIndex:indexPath.row];
            
            cell.msg.frame = CGRectMake(cell.msg.frame.origin.x,
                                        cell.msg.frame.origin.y,
                                        cell.msg.frame.size.width,
                                        labelHeight);
            
            
            [cell setSelectionStyle:UITableViewCellSelectionStyleDefault];
            UIView *customColorView = [[UIView alloc] init];
            customColorView.backgroundColor =  [UIColor colorWithRed:255/255.0 green:70/255.0 blue:11/255.0 alpha:1.0];
            
            cell.selectedBackgroundView =  customColorView;
            
        }
        
        return cell;
    }
    @catch (NSException *exception) {
        NSLog(@"exception::%@",exception);
    }
    
    
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath   *)indexPath
{
    
    NSLog(@"item clicked");
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //If this is the selected index we need to return the height of the cell
    //in relation to the label height otherwise we just return the minimum label height with padding
    
    return [self getLabelHeightForIndex:indexPath.row] + COMMENT_LABEL_PADDING * 2;
    
}



-(CGFloat)getLabelHeightForIndex:(NSInteger)index
{
    CGSize maximumSize = CGSizeMake(COMMENT_LABEL_WIDTH, 10000);
    
    CGSize labelHeighSize = [[[listArray objectAtIndex:index]valueForKey:@"message"] sizeWithFont: [UIFont fontWithName:@"Avenir" size:12.0f]
                                                                                constrainedToSize:maximumSize
                                                                                    lineBreakMode:NSLineBreakByCharWrapping];
    
    
    NSLog(@"labelHeighSize.height==%f",labelHeighSize.height);
    return labelHeighSize.height;
    
}




-(IBAction)sendBtn:(id)sender
{
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"dd/MM/yyyy hh:mm:ss a"];
    
    NSDate *now = [[NSDate alloc] init];
    
    NSString *todaydatestring = [format stringFromDate:now];

    listDict=[[NSMutableDictionary alloc]init];
    [listDict setValue:self.sendText.text forKey:@"message"];
    [listDict setValue:[UIImage imageNamed:@"p5.jpg"] forKey:@"image"];
    [listDict setValue:todaydatestring forKey:@"time"];

    [listArray addObject:listDict];
    
    [self.tableView reloadData];
    
    self.sendText.text=@"";
    int lastRowNumber = [self.tableView numberOfRowsInSection:0] - 1;
    NSIndexPath* ip = [NSIndexPath indexPathForRow:lastRowNumber inSection:0];
    [self.tableView scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionTop animated:NO];
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
