//
//  SignInViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/31/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (IBAction)usrnametxtfld:(id)sender {
    [sender endEditing:YES];
}

- (IBAction)SignInPressed:(UIButton *)sender {
    BOOL userFound=NO;
    NSString *userName = self.UsernameTextField.text;
    NSString *password =self.PasswordTextField.text;
    
    NSManagedObjectContext *context=[CoreDataHelper managedObjectContext];
    
    NSArray *usersArray = [CoreDataHelper fetchEntitiesForClass:[Users class] withPredicate:nil inManagedObjectContext:context];
    for (Users *user in usersArray) {
        NSLog(@"USERNAME:%@ and PASSWORD:%@",user.username,user.password);
        
        if ([user.username isEqualToString: userName ] && [user.password isEqualToString: password]) {
            userFound=YES;
        }
      
    }
    if (userFound == YES) {
        
        UIAlertView *av = [[UIAlertView alloc ]initWithTitle:@"Welcome" message:@"You are logged in successfully" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [av show];
        [self performSegueWithIdentifier:@"loginSuccess" sender:self];
    
    }
    else {
        UIAlertView *av2 = [[UIAlertView alloc]initWithTitle:@"Invalid Credentials" message:@"Username or password is incorrect" delegate:nil cancelButtonTitle:@"Retry" otherButtonTitles: nil];
        
        [av2 show];
        
        
    }

    
}

- (IBAction)psswrdtxtfld:(id)sender {
    [sender endEditing:YES];
}
@end
