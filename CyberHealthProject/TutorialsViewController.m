//
//  TutorialsViewController.m
//  CyberHealth
//
//  Created by Uday on 6/23/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import "TutorialsViewController.h"

@interface TutorialsViewController ()

@end

@implementation TutorialsViewController
@synthesize browser;
@synthesize indicator;
@synthesize TC;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    TC=[[TokenAccesss alloc]init];
    [indicator startAnimating];
    //Check Network Connection
    NSLog(@"network%@",[TC submitvalues]);
    if ([[TC submitvalues ]isEqualToString:@"Success"])
    {
        [browser setDelegate:self];
        NSString * urlString = @"https://www.google.co.in";
        NSURL * url = [NSURL URLWithString:urlString];
        NSURLRequest * reuest = [NSURLRequest requestWithURL:url];
        [browser loadRequest:reuest];
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Info!" message:@"Please check your internet connection." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
        [indicator stopAnimating];
        indicator.hidden=YES;
    }

}

- (void)webViewDidFinishLoad:(UIWebView *)webView;
{
    [indicator stopAnimating];
    indicator.hidden=YES;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [indicator stopAnimating];
    indicator.hidden=YES;
    NSLog(@"Error%@",error);
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
