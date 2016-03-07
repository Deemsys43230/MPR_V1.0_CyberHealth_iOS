//
//  DetailedCourseViewController.h
//  Cyber Health Care
//
//  Created by deemsys on 6/22/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailedCourseViewController : UIViewController
{
    NSString *favoBtnStr;
    
    NSDictionary *data_for_cell;

}


@property (nonatomic, strong) NSArray *imageArray;
@property (weak, nonatomic) IBOutlet UIButton *favoBtn;
@property (weak, nonatomic) IBOutlet UIView *aboutCourseView;
@property (weak, nonatomic) IBOutlet UIView *aboutAuthorView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *aboutSegment;

@property (weak, nonatomic) IBOutlet UITextView *aboutCourseText;
@property (weak, nonatomic) IBOutlet UITextView *aboutAuthorText;


@property (weak, nonatomic) IBOutlet UILabel *courseName;
@property (weak, nonatomic) IBOutlet UILabel *desc;
@property (weak, nonatomic) IBOutlet UILabel *authorName;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *price;



@property (strong, nonatomic) NSDictionary* detailItem;

@property(nonatomic,assign)id delegate;



@end
