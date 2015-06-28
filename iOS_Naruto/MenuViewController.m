//
//  MenuViewController.m
//  iOS_Naruto
//
//  Created by Chau Minh Nhut on 6/2/15.
//  Copyright (c) 2015 Chau Minh Nhut. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuTableViewCell.h"
#import "SWRevealViewController.h"
#import "HomeViewController.h"
#import "MovieViewController.h"
#import "OVAViewController.h"
#import "SDViewController.h"
#import "FightViewController.h"
#import "VietnameseViewController.h"
#import "FavoriteViewController.h"
#import "DownloadViewController.h"
#import "InfoViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController{
    NSArray *arrTitle;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    arrTitle = [NSArray arrayWithObjects:@"Anime", @"Movie", @"OVA", @"Naruto SD", @"Trận chiến",@"Thuyết minh", @"Yêu thích",@"Tải về", @"Thông tin", nil];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    UIImageView *tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background.jpeg"]];
    [tempImageView setFrame:self.tableView.frame];
    self.tableView.backgroundView = tempImageView;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 64;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(5,22, 40, 40)];
    imgView.image = [UIImage imageNamed:@"ic_app.png"];
    [view addSubview:imgView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 31, tableView.frame.size.width, 20)];
    [label setFont:[UIFont systemFontOfSize:20]];
    NSString *string = @"Naruto Việt";
    [label setText:string];
    label.textColor = [UIColor whiteColor];
    [view addSubview:label];
    
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrTitle.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"MenuTableViewCell";
    
    MenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[MenuTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.title.text = [arrTitle objectAtIndex:indexPath.row];
    cell.icon.image = [UIImage imageNamed:@"ic_info.png"];
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    SWRevealViewController *revealController = self.revealViewController;
    
    UIViewController *newFrontController = nil;
    
    // Check Row and Select Next View controller
    if (indexPath.row == 0)
    {
        HomeViewController *homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:homeViewController];
    }else if(indexPath.row==1){
        MovieViewController *movieViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MovieViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:movieViewController];
    }else if(indexPath.row==2){
        OVAViewController *ovaViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"OVAViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:ovaViewController];
    }else if(indexPath.row==3){
        SDViewController *sdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SDViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:sdViewController];
    }else if(indexPath.row==4){
        FightViewController *fightViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FightViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:fightViewController];
    }else if(indexPath.row==5){
        VietnameseViewController *vietnameseViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"VietnameseViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:vietnameseViewController];
    }else if(indexPath.row==6){
        FavoriteViewController *favoriteViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FavoriteViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:favoriteViewController];
    }else if(indexPath.row==7){
        DownloadViewController *downloadViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DownloadViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:downloadViewController];
    }else if(indexPath.row==8){
        InfoViewController *infoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"InfoViewController"];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:infoViewController];
    }
    [revealController pushFrontViewController:newFrontController animated:YES];
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
