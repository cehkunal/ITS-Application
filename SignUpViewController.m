//
//  SignUpViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/31/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()
- (IBAction)SignUpUser:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)usernametxtfld:(id)sender;
- (IBAction)psswrdtxtfld:(id)sender;

@end

@implementation SignUpViewController
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.usernameTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
}

- (IBAction)SignUpUser:(UIButton *)sender {
    if(![self.usernameTextField.text isEqual:@""] && ![self.passwordTextField.text isEqual:@""]){
    
    NSString *userName = self.usernameTextField.text;
    NSString *password = self.passwordTextField.text;
    
    NSManagedObjectContext *context = [CoreDataHelper managedObjectContext];
    
    Users *user = [CoreDataHelper insertManagedObjectOfClass:[Users class] inManagedObjectContext:context];
    user.username=userName;
    user.password=password;
    
    [CoreDataHelper saveManagedObjectContext:context];
        UIAlertView *av=[[UIAlertView alloc]initWithTitle:@"Successfully Signed Up" message:@"You have successfully registered your account. Login using your username and password" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [av show];
        self.usernameTextField.text=nil;
        self.passwordTextField.text=nil;
        [self.view endEditing:YES];
}
}
- (IBAction)usernametxtfld:(id)sender {
    [sender endEditing:YES];
}

- (IBAction)psswrdtxtfld:(id)sender {
    [sender endEditing:YES];
}
@end
