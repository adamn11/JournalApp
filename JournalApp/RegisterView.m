//
//  RegisterView.m
//  JournalApp
//
//  Created by Nadir Zaman on 11/7/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import "RegisterView.h"

@interface RegisterView ()

@end

@implementation RegisterView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerButton:(id)sender {
    if(self.loginText.text.length != 0 && self.passwordText.text.length != 0){
        PFUser *user = [PFUser user];
        user.username = self.loginText.text;
        user.password = self.passwordText.text;
        
        static NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        NSMutableString *randomString = [NSMutableString stringWithCapacity: 8];
        for (int i=0; i<8; i++) {
            [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
        }
        
        // other fields can be set if you want to save more information
        NSString *userID = randomString;
        user[@"userID"] = userID;
        NSString *pubName = [NSString stringWithFormat:@"Your public name is %@", userID];
        //userID is just the login name until a format is decided
        
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (!error) {
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Registered"
                                                               message: pubName
                                                              delegate: self
                                                     cancelButtonTitle:@"OK"
                                                     otherButtonTitles:nil];
                
                [alert show];
            } else {
                NSString *errorString = [error userInfo][@"error"];
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle: nil
                                                               message: errorString
                                                              delegate: self
                                                     cancelButtonTitle:@"OK"
                                                     otherButtonTitles:nil];
                
                [alert show];
            }
        }];
    }
}

@end
