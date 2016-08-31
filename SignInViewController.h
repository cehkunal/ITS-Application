//
//  SignInViewController.h
//  ITSapplication
//
//  Created by Kunal on 1/31/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignInViewController : UIViewController
- (IBAction)usrnametxtfld:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *UsernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
- (IBAction)SignInPressed:(UIButton *)sender;

- (IBAction)psswrdtxtfld:(id)sender;
@end
