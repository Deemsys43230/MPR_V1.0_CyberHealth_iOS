//
//  PrivacyViewController.h
//  CyberHealth
//
//  Created by Uday on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TokenAccesss.h"

@interface PrivacyViewController : UIViewController<UIWebViewDelegate>
{
    
}
@property (strong, nonatomic) IBOutlet UIWebView *browser;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@property(strong,nonatomic)TokenAccesss * TC;
@end
