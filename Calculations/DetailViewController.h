//
//  DetailViewController.h
//  Calculations
//
//  Created by Matthew Fenwick on 6/23/15.
//  Copyright (c) 2015 Matthew Fenwick. All rights reserved.
//

#import <UIKit/UIKit.h>


@class DetailViewController;


@protocol DetailViewControllerDelegate <NSObject>

- (void)detailViewControllerDidCancel:(DetailViewController *)controller;
- (void)detailViewController:(DetailViewController *)controller didFinishWithName:(NSString *)name fact:(NSString *)fact;

@end


@interface DetailViewController : UIViewController

@property (nonatomic, weak) id<DetailViewControllerDelegate> delegate;

@end
