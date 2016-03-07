//
//  UserAccountTableViewController.h
//  CyberHealth
//
//  Created by Uday on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserAccountTableViewController : UITableViewController
{
    
}
@property (strong, nonatomic) IBOutlet UIImageView *profilePicture;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *emailId;
@property (strong, nonatomic) IBOutlet UILabel *createdOn;
@property (strong, nonatomic) IBOutlet UILabel *status;


@end
