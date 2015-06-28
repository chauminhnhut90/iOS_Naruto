//
//  MenuTableViewCell.m
//  iOS_Naruto
//
//  Created by Chau Minh Nhut on 6/2/15.
//  Copyright (c) 2015 Chau Minh Nhut. All rights reserved.
//

#import "MenuTableViewCell.h"

@implementation MenuTableViewCell

@synthesize title = _title;
@synthesize icon = _icon;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
