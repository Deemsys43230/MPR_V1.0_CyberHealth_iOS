//
//  TestJsonViewController.m
//  ElectronicHealthcareRecord
//
//  Created by DeemsysInc on 12/20/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "TestJsonViewController.h"

@interface TestJsonViewController ()

@end

@implementation TestJsonViewController
@synthesize lab1;
@synthesize lab2;
@synthesize lab3;
@synthesize lab4;
@synthesize lab5;
@synthesize city;
@synthesize ein;
@synthesize phone;
@synthesize zip;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)getdata:(id)sender {
    
    NSString *urlstr=[NSString stringWithFormat:@"http://192.168.1.239:8080/EHR/getClinicDetail.json?clinicID=1"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlstr]];
    
    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response,
                                               NSData *data, NSError *connectionError)
     {
         
         
         
         if (data.length > 0 && connectionError == nil)
         {
             greeting = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
             
             NSLog(@"clinicForm=%@",[greeting valueForKey:@"clinicForm"]);
             
             //   NSLog(@"clinic=%@",[greeting valueForKey:@"clinic"]);
             
             
             greeting2=[greeting valueForKey:@"clinicForm"];
             
             
             
             NSLog(@"address=%@",[greeting2 valueForKey:@"address"]);
             
             NSLog(@"city=%@",[greeting2 valueForKey:@"city"]);
             
             NSLog(@"name=%@",[greeting2 valueForKey:@"name"]);
             
             NSLog(@"country=%@",[greeting2 valueForKey:@"country"]);
             
             NSLog(@"state=%@",[greeting2 valueForKey:@"state"]);
             
             NSLog(@"ein=%@",[greeting2 valueForKey:@"ein"]);
             
             NSLog(@"phone=%@",[greeting2 valueForKey:@"phone"]);
             
             NSLog(@"zipcode=%@",[greeting2 valueForKey:@"zipcode"]);
             
             NSLog(@"emailId=%@",[greeting2 valueForKey:@"emailId"]);
             
             
             namestr=[greeting2 valueForKey:@"name"];
             addstr=[greeting2 valueForKey:@"address"];
             statestr=[greeting2 valueForKey:@"state"];
             countrystr=[greeting2 valueForKey:@"country"];
             emailstr=[greeting2 valueForKey:@"emailId"];
             citystr=[greeting2 valueForKey:@"city"];
             einstr=[greeting2 valueForKey:@"ein"];
             phstr=[greeting2 valueForKey:@"phone"];
             zipstr=[greeting2 valueForKey:@"zipcode"];
             
             lab1.text=namestr;
             lab2.text=addstr;
             lab3.text=statestr;
             lab4.text=countrystr;
             lab5.text=emailstr;
             city.text=citystr;
             ein.text=einstr;
             phone.text=phstr;
             zip.text=zipstr;
             
             
             
         }
         
     }];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}



@end
