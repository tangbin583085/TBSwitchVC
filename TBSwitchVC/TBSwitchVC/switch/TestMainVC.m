//
//  TestMainVC.m
//  TestHk
//
//  Created by hanchuangkeji on 2017/11/1.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
//

#import "TestMainVC.h"
#import "TBSwitchVC.h"
#import "TBVC11.h"
#import "TBVC22.h"
#import "UIView+HKExtension.h"

@interface TestMainVC ()<TBSwitchVCDelegate>

@end

@implementation TestMainVC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.delegate = self;
    
    
    
    TBVC11 *vc1 = [[TBVC11 alloc] init];
    [self tb_addViewController:vc1];
    
    TBVC22 *vc2 = [[TBVC22 alloc] init];
    [self tb_addViewController:vc2];
    
    TBVC11 *vc3 = [[TBVC11 alloc] init];
    [self tb_addViewController:vc3];
    
    TBVC11 *vc4 = [[TBVC11 alloc] init];
    [self tb_addViewController:vc4];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}


#pragma mark <MainVCDelegate>
- (CGFloat)tb_headerViewHeight {
    return 200;
}

- (UIView *)tb_headerView {
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"timg"];
    imageView.height = 200;
    return imageView;
}

- (NSArray<NSString *> *)tb_menuTitleArray {
    return @[@"第0个", @"第1个", @"第2个", @"第3个",];
}


@end
