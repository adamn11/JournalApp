//
//  SettingsViewController.m
//  JournalApp
//
//  Created by Adam Nguyen on 10/22/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import "YourPostsViewController.h"

@interface YourPostsViewController ()

@end

@implementation YourPostsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PFUser *current = [PFUser currentUser];

    NSMutableArray *allObjects = [NSMutableArray array];
    PFQuery *query = [PFQuery queryWithClassName:@"Journal_Entries"];
    [query whereKey:@"userID" equalTo:[current objectForKey:@"userID"]];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded. The first 100 objects are available in objects
        //    [allObjects addObjectsFromArray:objects];
          //             NSString *text = journal[@"Entry"];
            
         //   _PostText.text = text;
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];

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

@end
