//
//  ViewController.m
//  threeTest
//
//  Created by 曾文亮 on 2017/4/23.
//  Copyright © 2017年 haodf. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"
//#include <SVProgressHUD/SVProgressHUD>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *sss;

@property (weak, nonatomic) IBOutlet UITextField *pass;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",NSHomeDirectory());
}
- (IBAction)btnClick:(id)sender {
    
    if (self.sss.text.length == 0) {
        //[SVProgressHUD showErrorWithStatus:@"用户名为空"];
        return;
    }
    
    if (self.pass.text.length == 0) {
        [SVProgressHUD showErrorWithStatus:@"密码为空"];
        return;
    }
    
    if ([self.sss.text isEqualToString:@"name"] && [self.pass.text isEqualToString:@"pass"]) {
        [self performSegueWithIdentifier:@"login2two" sender:nil];
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
