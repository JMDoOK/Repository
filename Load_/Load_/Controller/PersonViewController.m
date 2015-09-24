//
//  PersonViewController.m
//  Load_
//
//  Created by apple on 15/9/24.
//  Copyright (c) 2015年 tarena_. All rights reserved.
//

#import "PersonViewController.h"

@interface PersonViewController ()

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSubView];
}
- (void) addSubView {
    self.title = @"用户界面";
    
    UITextView *text = [[UITextView alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height/2, self.view.bounds.size.width, self.view.bounds.size.height/3)];
    text.text = @"热烈欢迎登陆";
    text.font=[UIFont systemFontOfSize:40] ;
    text.textColor  = [UIColor redColor];
    [self.view addSubview:text];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"返回" style: UIBarButtonSystemItemDone target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = item;
}

- (void)back {

    [self dismissViewControllerAnimated:YES completion:nil];
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
