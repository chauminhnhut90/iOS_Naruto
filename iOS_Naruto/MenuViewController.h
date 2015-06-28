//
//  MenuViewController.h
//  iOS_Naruto
//
//  Created by Chau Minh Nhut on 6/2/15.
//  Copyright (c) 2015 Chau Minh Nhut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
