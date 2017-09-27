//
//  ViewController.m
//  cocoaTest
//
//  Created by Luis Romo on 22/09/17.
//  Copyright © 2017 devf. All rights reserved.
//

#import "ViewController.h"
//#import <AFNetworking/AFNetworking.h>
#import <AFNetworking.h>
#import <GAI.h>
//#import <GAI.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[[GAI sharedInstance]logger] setLogLevel:kGAILogLevelVerbose];
    [[GAI sharedInstance]trackerWithTrackingId:@"abc123"];
// deprecated   AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

    AFHTTPSessionManager  *manager =[AFHTTPSessionManager manager];
    NSLog(@"Got a manager %@", manager);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
