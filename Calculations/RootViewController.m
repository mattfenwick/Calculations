//
//  ViewController.m
//  Calculations
//
//  Created by Matthew Fenwick on 6/22/15.
//  Copyright (c) 2015 Matthew Fenwick. All rights reserved.
//

#import "RootViewController.h"
#import "RootTableViewCell.h"
#import "DetailViewController.h"
#import "CalculationsNavigationViewController.h"


@interface RootViewController () <UITableViewDataSource, UITableViewDelegate, DetailViewControllerDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *things;

@end


@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Calculations";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(edit)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addCalculation)];
    [self.tableView registerNib:[UINib nibWithNibName:@"RootTableViewCell" bundle:nil] forCellReuseIdentifier:@"RootTableViewCell"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
//    self.tableView.editing = YES;
    self.things = [NSMutableArray arrayWithArray:@[@"hi", @"bye", @"wine", @"beer"]];
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

- (void)edit
{
    self.tableView.editing = !self.tableView.editing;
    if (self.tableView.editing)
    {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(edit)];
    }
    else
    {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(edit)];
    }
}

- (void)addCalculation
{
    DetailViewController *controller = [[DetailViewController alloc] init];
    controller.delegate = self;
    CalculationsNavigationViewController *navController = [[CalculationsNavigationViewController alloc] initWithRootViewController:controller];
    [self presentViewController:navController animated:YES completion:nil];
}

#pragma mark - DetailViewControllerDelegate

- (void)detailViewControllerDidCancel:(DetailViewController *)controller
{
    NSLog(@"cancelled");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)detailViewController:(DetailViewController *)controller didFinishWithName:(NSString *)name fact:(NSString *)fact
{
    NSLog(@"finished -- %@ %@", name, fact);
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.things addObject:[NSString stringWithFormat:@"%@ %@", name, fact]];
    [self.tableView reloadData];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.things count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RootTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"RootTableViewCell"];
    if (!cell)
    {
        cell = [[RootTableViewCell alloc] init];
    }
    cell.title = self.things[indexPath.row];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    
}

#pragma mark - UITableViewDelegate

- (BOOL)tableView:(UITableView *)tableView shouldShowMenuForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

@end
