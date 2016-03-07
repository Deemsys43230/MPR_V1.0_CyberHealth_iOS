//
//  UpdatesViewController.m
//  CyberHealth
//
//  Created by Uday on 6/23/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "UpdatesViewController.h"
#define YOUR_APP_STORE_ID 906588887 //App Id

@interface UpdatesViewController ()

@end

@implementation UpdatesViewController
@synthesize updatesLabel;
@synthesize currentVersion;
@synthesize storeVersion;
@synthesize actionView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self getdata];
}

-(void)getdata
{
    //Loading itunes search API data
    NSLog(@"Used GPS App Id");
    NSString *urlString=[NSString stringWithFormat:@"http://itunes.apple.com/lookup?id=906588887"];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response,
                                               NSData *data, NSError *connectionError)
     {
         if (data.length > 0 && connectionError == nil)
         {
            iTunes = [[NSMutableDictionary alloc]init];
            iTunes= [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
           // NSLog(@"data::%@",iTunes);
             NSMutableDictionary * dict = [[NSMutableDictionary alloc]init];
             dict = [[iTunes valueForKey:@"results"] objectAtIndex:0];
             NSString * tempStoreVersion = [dict valueForKey:@"version"];
          //   NSLog(@"Version=%@",tempStoreVersion);
             NSString * tempCurrentVersion= [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString*)kCFBundleVersionKey];
             if (![tempCurrentVersion isEqualToString:tempStoreVersion])
             {
                 updatesLabel.text=@"Updates Available";
                 currentVersion.text=[NSString stringWithFormat:@"Current Version: %@",tempCurrentVersion];
                 storeVersion.text=[NSString stringWithFormat:@"Store Version: %@",tempStoreVersion];
                 actionView.hidden=NO;
             }
             else if ([tempStoreVersion isEqualToString:@""])
             {
                 updatesLabel.text=@"Can't reach server";
                 currentVersion.text=@"Try sometimes later";
                 storeVersion.hidden=YES;
                 actionView.hidden=YES;
             }
             else
             {
                 updatesLabel.text=@"Application upto date";
                 currentVersion.text=[NSString stringWithFormat:@"Current Version: %@",tempCurrentVersion];
                 storeVersion.text=[NSString stringWithFormat:@"Store Version: %@",tempStoreVersion];
                 actionView.hidden=YES;
             }
          
         }
         else
         {
             updatesLabel.text=@"Check Network Connection";
             currentVersion.hidden=YES;
             storeVersion.hidden=YES;
             actionView.hidden=YES;
         }
         
     }];
    
    

}

- (IBAction)installUpdates:(id)sender {
    
    NSLog(@"Currently used GPS application App Id");
    static NSString *const iOS7AppStoreURLFormat = @"itms-apps://itunes.apple.com/app/id%d";
    static NSString *const iOSAppStoreURLFormat = @"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%d";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:([[UIDevice currentDevice].systemVersion floatValue] >= 7.0f)? iOS7AppStoreURLFormat: iOSAppStoreURLFormat, YOUR_APP_STORE_ID]]]; // Would contain the right link
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
