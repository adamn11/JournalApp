//
//  CreatePostsViewController.m
//  JournalApp
//
//  Created by Adam Nguyen on 10/22/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import "CreatePostsViewController.h"

@interface CreatePostsViewController ()

@end

@implementation CreatePostsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)submitPost:(UIButton *)sender {
    PFUser *current = [PFUser currentUser];
    
    PFObject *journal = [PFObject objectWithClassName:@"Journal_Entries"];
    journal[@"userID"] = [current objectForKey:@"userID"];
    journal[@"Entry"] = _entryText.text;
    
    static NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: 8];
    for (int i=0; i<8; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    
    // other fields can be set if you want to save more information
    NSString *entryID = randomString;
    journal[@"Entry_ID"] = randomString;
    journal[@"Location"] = [PFGeoPoint geoPointWithLatitude:(double)0 longitude:(double)0];
    [journal saveInBackground];
        }

@end
