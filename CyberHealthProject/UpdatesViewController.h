//
//  UpdatesViewController.h
//  CyberHealth
//
//  Created by Uday on 6/23/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UpdatesViewController : UIViewController
{
    NSMutableDictionary * iTunes;
}
@property (strong, nonatomic) IBOutlet UILabel *updatesLabel;
@property (strong, nonatomic) IBOutlet UILabel *currentVersion;
@property (strong, nonatomic) IBOutlet UILabel *storeVersion;
@property (strong, nonatomic) IBOutlet UIView *actionView;



@end
