//
//  CalculationsNavigationViewController.m
//  Calculations
//
//  Created by Matthew Fenwick on 6/23/15.
//  Copyright (c) 2015 Matthew Fenwick. All rights reserved.
//

#import "CalculationsNavigationViewController.h"

@interface CalculationsNavigationViewController ()

@end

@implementation CalculationsNavigationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (BOOL)shouldAutorotate
{
    return self.topViewController.shouldAutorotate;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return self.topViewController.supportedInterfaceOrientations;
}

@end
