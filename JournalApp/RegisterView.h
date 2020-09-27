//
//  RegisterView.h
//  JournalApp
//
//  Created by Nadir Zaman on 11/7/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface RegisterView : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *loginText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
- (IBAction)registerButton:(id)sender;

@end
