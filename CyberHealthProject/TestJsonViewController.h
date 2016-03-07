//
//  TestJsonViewController.h
//  ElectronicHealthcareRecord
//
//  Created by DeemsysInc on 12/20/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestJsonViewController : UIViewController

{

    NSDictionary *greeting,*greeting2;
    NSString *namestr,*addstr,*statestr,*countrystr,*emailstr,*citystr,*einstr,*phstr,*zipstr;

}
@property (strong, nonatomic) IBOutlet UILabel *lab1;
@property (strong, nonatomic) IBOutlet UILabel *lab2;
@property (strong, nonatomic) IBOutlet UILabel *lab3;
@property (strong, nonatomic) IBOutlet UILabel *lab4;
@property (strong, nonatomic) IBOutlet UILabel *lab5;


@property (strong, nonatomic) IBOutlet UILabel *city;
@property (strong, nonatomic) IBOutlet UILabel *ein;
@property (strong, nonatomic) IBOutlet UILabel *phone;
@property (strong, nonatomic) IBOutlet UILabel *zip;

@property (strong, nonatomic) IBOutlet UIButton *getdata;


@end
