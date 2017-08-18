//
//  TwoViewController.m
//  threeTest
//
//  Created by 曾文亮 on 2017/4/23.
//  Copyright © 2017年 haodf. All rights reserved.
//

#import "TwoViewController.h"
#import "SVProgressHUD.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)btnClick:(id)sender {
    
    [SVProgressHUD showSuccessWithStatus:@"哈哈哈"];
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
