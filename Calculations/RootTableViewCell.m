//
//  RootTableViewCell.m
//  Calculations
//
//  Created by Matthew Fenwick on 6/23/15.
//  Copyright (c) 2015 Matthew Fenwick. All rights reserved.
//

#import "RootTableViewCell.h"

@interface RootTableViewCell ()

@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@end


@implementation RootTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

- (void)setTitle:(NSString *)title
{
    _title = title;
    self.titleLabel.text = title;
}

@end
