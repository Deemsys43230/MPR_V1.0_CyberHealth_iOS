//
//  ExampleSecondView.h
//  ExpandableTableView
//
//  Created by Tom Fewster on 17/04/2012.
//

#import <UIKit/UIKit.h>

@interface ExampleSecondView : UIViewController

{
    
    NSString *text;
    
}
@property (nonatomic) NSString *text;
@property (weak,nonatomic) IBOutlet UILabel *heading;

@end
