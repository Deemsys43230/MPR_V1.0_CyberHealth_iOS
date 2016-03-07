//
//  SharedMethods.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 18/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "SharedMethods.h"

@interface SharedMethods ()
{
    NSDateFormatter *dateFormatterObj;;
}
@end

@implementation SharedMethods

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSDateFormatter *)dateFormatter
{
    
    if (!dateFormatterObj)
    {
        dateFormatterObj = [[NSDateFormatter alloc] init];
        [dateFormatterObj setDateFormat:@"MM/dd/yyyy"];
    }
    return dateFormatterObj;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)getImageResolutionName:(NSString*)imagename
{
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone) {
        
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        if ((screenRect.size.height == 568.0f)||(screenRect.size.height == 667.0f))
        {
            imagename = [imagename stringByReplacingOccurrencesOfString:@".png" withString:@"@2x.png"];
            // code for 4/4.5/4.7 -inch screen
        }
        else if (screenRect.size.height == 736.0f)
        {
            imagename = [imagename stringByReplacingOccurrencesOfString:@".png" withString:@"@3x.png"];
            // code for 5.5-inch screen
        }
        
        
    }
    return imagename;
}

@end
