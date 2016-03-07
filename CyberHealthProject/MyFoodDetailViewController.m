//
//  EveningSnacksViewController.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 25/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "MyFoodDetailViewController.h"

@interface MyFoodDetailViewController ()

@end

@implementation MyFoodDetailViewController
@synthesize foodDetail;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.topViewController.navigationItem.title=@"Food Detail";
   
   
    if ([foodDetail count]>0) {
        self.foodName.text=foodDetail[@"foodName"];
        NSString *foodImageURL=foodDetail[@"foodImage"];
        self.foodImage.image=[UIImage imageNamed:foodImageURL];
    }
   else
   {
       foodDetail=[[NSMutableDictionary alloc]init];
       foodDetail[@"foodName"]=@"Chicken 65";
       foodDetail[@"servings"]=@"10";
       foodDetail[@"foodImage"]=@"food1.jpg";
       foodDetail[@"caloriesConsumed"]=@"478 Cal";
   }

    
    self.pickerData=[[NSMutableArray alloc]init];
    for (int i=25; i<=1000; i=i+25) {
        [self.pickerData addObject:[NSString stringWithFormat:@"%d",i]];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}
/*- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
 {
 pickerView.t
 UILabel *label = (UILabel*) view;
 if (label == nil)
 {
 label = [[UILabel alloc] init];
 }
 
 [label setText:[NSString stringWithFormat:@"%@",_pickerData[row]]];
 
 // This part just colorizes everything, since you asked about that.
 
 [label setTextColor:[UIColor colorWithRed:255/255 green:92/255 blue:43/255 alpha:1]];
 [label setBackgroundColor:[UIColor colorWithRed:0.0745 green:0.357 blue:1.0 alpha:1]];
 CGSize rowSize = [pickerView rowSizeForComponent:component];
 CGRect labelRect = CGRectMake (0, 0, rowSize.width, rowSize.height);
 [label setFrame:labelRect];
 
 return label;
 }*/
- (void)pickerView:(UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent:(NSInteger)component {
    // Handle the selection
    
    [self.foodServingsValue setText:[NSString stringWithFormat:@"%@",_pickerData[row]]];
    [pickerView reloadComponent:component];
    
}
- (IBAction)addFood:(id)sender {
    
    for (UIViewController *v in self.navigationController.viewControllers) {
        if ([v isKindOfClass:[MyFoodListViewController class]]) {
            [self.navigationController popToViewController:v animated:YES];
            break;
        }
    }
}
- (IBAction)cancel:(id)sender {
    for (UIViewController *v in self.navigationController.viewControllers) {
        if ([v isKindOfClass:[MyFoodListViewController class]]) {
            [self.navigationController popToViewController:v animated:YES];
            break;
        }
    }
}
@end
