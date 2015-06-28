//
//  OVAViewController.m
//  iOS_Naruto
//
//  Created by Chau Minh Nhut on 6/28/15.
//  Copyright (c) 2015 Chau Minh Nhut. All rights reserved.
//

#import "OVAViewController.h"
#import "SWRevealViewController.h"


@interface OVAViewController ()

@end

@implementation OVAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initNavigationBar];
    [self initSlideMenu];
}

-(void)initNavigationBar{
    self.title = @"OVA";
}

-(void)initSlideMenu{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
