//
//  ViewController.m
//  xibDemo
//
//  Created by 洪清 on 2018/12/26.
//  Copyright © 2018 洪清. All rights reserved.
//

#import "MainViewController.h"
#import <Masonry/Masonry.h>
#import "DemoViewController.h"

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *hq_tableView;
@end

@implementation MainViewController
-(UITableView *)hq_tableView
{
    if (!_hq_tableView) {
        _hq_tableView =[[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        if (@available(iOS 11.0, *)) {
            _hq_tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
        _hq_tableView.contentInset =UIEdgeInsetsMake(0, 0,0, 0);
        [_hq_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:[NSString stringWithUTF8String:object_getClassName([UITableViewCell class]) ]];
        _hq_tableView.delegate =self;
        _hq_tableView.dataSource =self;
    }
    return _hq_tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"xib的使用";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor =[UIColor grayColor];
    [self.view addSubview:self.hq_tableView];
    [self.hq_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - TableViewDelegate & Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
     UITableViewCell  * Cell = [tableView dequeueReusableCellWithIdentifier:[NSString stringWithUTF8String:object_getClassName([UITableViewCell class])]];
    switch (indexPath.row) {
        case 0:
            Cell.textLabel.text =@"xib方式定义的弹框";
            break;
            
        default:
            break;
    }
    return Cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            DemoViewController *vc = [DemoViewController new];
            [self.navigationController pushViewController:vc animated:YES];
            
        }
            break;
            
        default:
            break;
    }
}


@end
