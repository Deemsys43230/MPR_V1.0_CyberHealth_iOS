//
//  Register2.h
//  CyberHealths
//
//  Created by DeemsysInc on 14/03/16.
//  Copyright (c) 2016 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VSDropdown.h"
# import "SCLAlertView.h"
@interface Register2 : UIViewController<VSDropdownDelegate,UITextFieldDelegate>
{
    VSDropdown *_dropdown;
}
@property (weak, nonatomic) IBOutlet UITextField *secretanswer;
@end
