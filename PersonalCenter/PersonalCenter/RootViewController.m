//
//  RootViewController.m
//  PersonalCenter
//
//  Created by Arch on 2017/6/16.
//  Copyright © 2017年 mint_bin. All rights reserved.
//

#import "RootViewController.h"
#import "PersonalCenterViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *enlargeSwitch;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//进入个人中心
- (IBAction)intoCenterAction:(UIButton *)sender {
    PersonalCenterViewController *personalCenterVC = [[PersonalCenterViewController alloc]init];
    personalCenterVC.isEnlarge = self.enlargeSwitch.on;
    personalCenterVC.selectedIndex = 0;
    [self.navigationController pushViewController:personalCenterVC animated:YES];
}

@end
