//
//  TBVC11.m
//  TestHk
//
//  Created by hanchuangkeji on 2017/10/31.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
//

#import "TBVC11.h"
#import "UIView+HKExtension.h"
#import "TBSwitchVC.h"

@interface TBVC11 ()<UITableViewDelegate, UITableViewDataSource, TBSwitchVCExpectedScrollViewDelegate>
@property (nonatomic, weak)UITableView *tableView;

@end

@implementation TBVC11

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
}

- (void)setupTableView {
    
    UITableView *tableView = [[UITableView alloc] init];
    tableView.frame = CGRectMake(0, 0, self.view.width, self.view.height);
    tableView.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1.0];
    tableView.delegate = self;
    tableView.dataSource = self;
    self.tableView = tableView;
    tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    [self.view addSubview:tableView];
    
    // 注册cell
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.textLabel.text = [NSString stringWithFormat:@"我是第%ld个", indexPath.row];
    
    return cell;
}


#pragma mark <MainVCExpectedScrollViewDelegate>
- (UIScrollView *)tb_expectWhichSrollView {
    return self.tableView;
}

@end
