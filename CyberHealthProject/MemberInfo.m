//
//  MemberInfo.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "MemberInfo.h"

@interface MemberInfo ()

@end

@implementation MemberInfo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"Member Detail";
    self.ap=AppDelegateMacro;
    self.goalDetail=self.ap.selectedGoal;
    self.memberDetail=self.ap.GoalMemberList;
    self.caloriesBurnt.text=self.memberDetail[@"points"];
    self.position.text=self.memberDetail[@"position"];
    self.userImage.image=[UIImage imageNamed:self.memberDetail[@"memberImage"]];
    self.userName.text=self.memberDetail[@"memberName"];
    UIImageView *image1 =(UIImageView*)self.userImage;
    image1.layer.cornerRadius = 40;
    image1.layer.masksToBounds = YES;
    image1.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
    image1.layer.borderWidth=1.0f;
    
    self.userImage=image1;
    
    
    self.call.layer.cornerRadius = 20;
    self.call.layer.masksToBounds = YES;
    self.call.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
    self.call.layer.borderWidth=1.0f;
    
    self.mail.layer.cornerRadius = 20;
    self.mail.layer.masksToBounds = YES;
    self.mail.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
    self.mail.layer.borderWidth=1.0f;
    
    self.trackList=[[NSMutableArray alloc]init];
    self.trackDeatil=[[NSMutableDictionary alloc]init];
    [self.trackDeatil setValue:@"01/05/2015" forKey:@"entryDate"];
    [self.trackDeatil setValue:@"201 cal" forKey:@"caloriesBurnt"];
    [self.trackList addObject:self.trackDeatil];
    
    self.trackDeatil=[[NSMutableDictionary alloc]init];
    [self.trackDeatil setValue:@"02/10/2015" forKey:@"entryDate"];
    [self.trackDeatil setValue:@"204 cal" forKey:@"caloriesBurnt"];
    [self.trackList addObject:self.trackDeatil];
    
    self.trackDeatil=[[NSMutableDictionary alloc]init];
    [self.trackDeatil setValue:@"04/13/2015" forKey:@"entryDate"];
    [self.trackDeatil setValue:@"341 cal" forKey:@"caloriesBurnt"];
    [self.trackList addObject:self.trackDeatil];
    
    self.trackDeatil=[[NSMutableDictionary alloc]init];
    [self.trackDeatil setValue:@"06/21/2015" forKey:@"entryDate"];
    [self.trackDeatil setValue:@"874 cal" forKey:@"caloriesBurnt"];
    [self.trackList addObject:self.trackDeatil];
    
    self.trackDeatil=[[NSMutableDictionary alloc]init];
    [self.trackDeatil setValue:@"07/15/2015" forKey:@"entryDate"];
    [self.trackDeatil setValue:@"258 cal" forKey:@"caloriesBurnt"];
    [self.trackList addObject:self.trackDeatil];
    
    self.bannerBlurView.blurRadius = 10;
    self.bannerBlurView.tintColor=[UIColor clearColor];
    self.bannerBlurView.dynamic = NO;
    self.bannerBlurView.contentMode = UIViewContentModeRight;
    self.bannerBlurView.layer.contentsGravity = kCAGravityBottomLeft;
    [self.bannerBlurView setClipsToBounds:YES];
    [self.bannerBlurView updateAsynchronously:YES completion:^{
        // Whatever you want
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return [self.trackList count];
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    caloriesTrackList *cell=(caloriesTrackList *)[tableView dequeueReusableCellWithIdentifier:@"caloriesTrackList"];
    
        
    self.trackDeatil=self.trackList[indexPath.row];
    cell.entryDate.text=self.trackDeatil[@"entryDate"];
    cell.calBurnt.text=self.trackDeatil[@"caloriesBurnt"];
    
    return cell;
}
- (IBAction)makeCall:(id)sender {

  
    UIDevice *device = [UIDevice currentDevice];
    if ([[device model] isEqualToString:@"iPhone"] ) {
            NSString *phoneNumber = [@"telprompt://" stringByAppendingString:@"044-32006566"];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
    } else {
        UIAlertView *notPermitted=[[UIAlertView alloc] initWithTitle:@"Alert" message:@"Your device doesn't support this feature." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [notPermitted show];
    }
}
- (IBAction)sendMail:(id)sender {
    // Email Subject
    NSString *emailTitle = @"Hello Friend";
    // Email Content
    NSString *messageBody = @"Hi!!";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"john@cyberhealth.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
