//
//  LoginView.m
//  JournalApp
//
//  Created by Nadir Zaman on 11/7/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import "LoginView.h"

@interface LoginView ()

@end

@implementation LoginView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButton:(id)sender {
    [PFUser logInWithUsernameInBackground:self.loginText.text
                                 password:self.passwordText.text block:^(PFUser *user, NSError *error)
     
     {
         if (!error) {
             NSString *userID = [[PFUser currentUser] objectForKey:@"userID"];
             AppDelegate *appDelegateTemp = [[UIApplication sharedApplication]delegate];
             
             appDelegateTemp.window.rootViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
             //This is the user name used for the tables and the one displayed in public
         } else {
             NSString *errorString = [error userInfo][@"error"];
             UIAlertView *alert = [[UIAlertView alloc]initWithTitle: nil
                                                            message: errorString
                                                           delegate: self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
             
             [alert show];
             // The login failed. Check error to see why.
         }
     }];
}
@end
