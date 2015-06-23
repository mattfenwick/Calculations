//
//  ViewController.m
//  Calculations
//
//  Created by Matthew Fenwick on 6/22/15.
//  Copyright (c) 2015 Matthew Fenwick. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end


@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Calculations";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addCalculation)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)addCalculation
{
    NSLog(@"no");
}

@end
