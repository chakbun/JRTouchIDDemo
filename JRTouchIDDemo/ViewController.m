//
//  ViewController.m
//  JRTouchIDDemo
//
//  Created by Jaben on 16/3/10.
//  Copyright © 2016年 chakbun. All rights reserved.
//

#import "ViewController.h"

@import LocalAuthentication;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)touchButtonAction:(id)sender {

    LAContext *authenticationContext = [LAContext new];
    NSError *error = nil;
    
    BOOL canEvaluate = [authenticationContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthentication error:&error];
    if (canEvaluate) {
        
        NSLog(@"============ can use touch id ============");
    
        [authenticationContext evaluatePolicy:LAPolicyDeviceOwnerAuthentication localizedReason:@"指纹验证" reply:^(BOOL success, NSError * _Nullable error) {
            
            if (success) {
                NSLog(@"============ evaluate success ============");

            }else {
                NSLog(@"============ evaluate fail ============");

            }
        }];
    }else {
        NSLog(@"============ touch id do not available ============");

    }
}

@end
