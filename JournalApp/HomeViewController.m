//
//  FirstViewController.m
//  JournalApp
//
//  Created by Adam Nguyen on 10/22/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import "HomeViewController.h"
#import <Parse/Parse.h>
#import "LoginView.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)LogOut:(id)sender {
    [PFUser logOut];
    NSLog(@"%@", [PFUser currentUser]);
    AppDelegate *appDelegateTemp = [[UIApplication sharedApplication]delegate];
    
    appDelegateTemp.window.rootViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"Login"];
}

@end
