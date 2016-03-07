//
//  ExampleSecondView.m
//  ExpandableTableView
//
//  Created by Tom Fewster on 17/04/2012.
//

#import "ExampleSecondView.h"

@implementation ExampleSecondView

@synthesize text = _text;



- (void)viewDidLoad
{
    [self.heading setText:[NSString stringWithFormat:@"%@", _text]];
    
    
    NSLog(@"_text avlues=%@",_text);
    
    
}



@end
