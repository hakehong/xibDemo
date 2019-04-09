//
//  DemoViewController.m
//  xibDemo
//
//  Created by 洪清 on 2019/1/25.
//  Copyright © 2019 洪清. All rights reserved.
//

#import "DemoViewController.h"
#import "popView.h"
#import "Header.h"


@interface DemoViewController ()
@property (nonatomic,strong) popView *tempView;
@end

@implementation DemoViewController

//懒加载
#pragma mark - lazy loading

// 生命周期
#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor blackColor];
    self.tempView =[popView initPopView];
    self.tempView.frame =CGRectMake((WDScreenW-200)/2.0,WDScreenH, 200,200);
//    [UIView animateWithDuration:1 animations:^{
//        self.tempView.mj_y = (WDScreenH-200)/2.0;
//    } completion:nil];
    
    [UIView animateWithDuration:2 delay:0 usingSpringWithDamping:1.1 initialSpringVelocity:5 options:UIViewAnimationOptionLayoutSubviews animations:^{
       self.tempView.mj_y = (WDScreenH-200)/2.0;
    } completion:nil];

    [self.view addSubview:self.tempView];
    // Do any additional setup after loading the view.
}

// 初始化方法
#pragma mark - Initial Function

// 响应事件方法
#pragma mark - Event Response

// 系统代理，例如tableview 代理
#pragma mark - System Delegate

// 自定义一些控件的代理
#pragma mark - Custom Delegate

// 公开可以调用的方法
#pragma mark - Public Function

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
