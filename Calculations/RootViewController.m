//
//  ViewController.m
//  Calculations
//
//  Created by Matthew Fenwick on 6/22/15.
//  Copyright (c) 2015 Matthew Fenwick. All rights reserved.
//

#import "RootViewController.h"
#import "RootTableViewCell.h"


@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end


@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Calculations";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addCalculation)];
    [self.tableView registerNib:[UINib nibWithNibName:@"RootTableViewCell" bundle:nil] forCellReuseIdentifier:@"RootTableViewCell"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

#pragma mark - actions

- (void)addCalculation
{
    NSLog(@"no");
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RootTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"RootTableViewCell"];
    if (!cell)
    {
        cell = [[RootTableViewCell alloc] init];
    }
    cell.title = [NSString stringWithFormat:@"%@ %@", @(indexPath.row), @(indexPath.section)];
    return cell;
}

#pragma mark - UITableViewDelegate

@end
