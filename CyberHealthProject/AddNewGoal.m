//
//  AddNewGoal.m
//  CyberHealthProject
//
//  Created by DeemsysInc on 22/06/15.
//  Copyright (c) 2015 Deemsys. All rights reserved.
//

#import "AddNewGoal.h"

@interface AddNewGoal ()

@end

@implementation AddNewGoal

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"Create Goal";
//    self.goalName.layer.borderColor=[[UIColor orangeColor]CGColor];
//    self.goalName.layer.borderWidth= 1.0f;
    
    self.addImage.layer.cornerRadius = 40;
    self.addImage.layer.masksToBounds = YES;
    self.addImage.layer.borderColor=(__bridge CGColorRef)([UIColor grayColor]);
    self.addImage.layer.borderWidth=1.0f;
   
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapAnywhere:)];
    [self.view addGestureRecognizer:tapRecognizer];
}

- (void)didTapAnywhere:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark-delegates
-(BOOL)textFieldShouldReturn:(UITextField*)textField
{
    NSInteger nextTag = textField.tag + 1;
    // Try to find next responder
    UIResponder* nextResponder = [self.view viewWithTag:nextTag];
    if (nextResponder) {
        // Found next responder, so set it.
        [nextResponder becomeFirstResponder];
    } else {
        // Not found, so remove keyboard.
        [textField resignFirstResponder];
    }
    return NO; // We do not want UITextField to insert line-breaks.
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(![string isEqualToString:@""])
    {
        
        NSCharacterSet *rangeOfCharacters = [NSCharacterSet characterSetWithCharactersInString:@" "];
        if (range.location == 0 && [rangeOfCharacters characterIsMember:[string characterAtIndex:0]] )
        {
            //Restrict whitespace
            return NO;
        }
        
    }
    
    else if(![string isEqualToString:@""])
    {
        NSCharacterSet *rangeOfCharacters = [NSCharacterSet characterSetWithCharactersInString:@"\n"];
        if (range.location == 0 && [rangeOfCharacters characterIsMember:[string characterAtIndex:0]] )
        {
            //Restrict whitespace
            return NO;
        }
    }
    
    if (textField==self.goalName)
    {
        if ([string rangeOfCharacterFromSet:[NSCharacterSet decimalDigitCharacterSet]].location != NSNotFound)
        {
            //Restrict numbers
            return NO;
        }
 
        
    }
    if (textField==self.goalName)
    {
      
        // Prevent crashing undo bug – see note below.
        if(range.length + range.location > textField.text.length)
        {
            return NO;
        }
        
        NSUInteger newLength = [textField.text length] + [string length] - range.length;
        return newLength <= 25;
        
        
    }
   
    return YES;
}
- (IBAction)next:(id)sender {
    UIViewController *initialVC= [self.storyboard instantiateViewControllerWithIdentifier:@"userGroupPicker"];
    [self.navigationController pushViewController:initialVC animated:YES];
}
- (IBAction)chooseImage:(id)sender {
    UIActionSheet *action=[[UIActionSheet alloc]initWithTitle:@"Choose Type" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Take Photo",@"Choose From File", nil];
    [action showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==0) {
        self.pickerController = [[UIImagePickerController alloc] init];
        self.pickerController.delegate = self;
        self.pickerController.allowsEditing = YES;
        if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            
            UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                  message:@"Device has no camera"
                                                                 delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles: nil];
            
            [myAlertView show];
            
        }
        else
        {
           self.pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
            [self presentViewController:self.pickerController animated:YES completion:NULL];
        }
        
    }
    else if (buttonIndex==1)
    {
        self.pickerController = [[UIImagePickerController alloc] init];
        self.pickerController.delegate = self;
        self.pickerController.allowsEditing = YES;
        self.pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
         [self presentViewController:self.pickerController animated:YES completion:NULL];

    }
   
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self.pickerController dismissViewControllerAnimated:YES completion:NULL];
    
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.addImage.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}
@end
