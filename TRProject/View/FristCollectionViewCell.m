//
//  FristCollectionViewCell.m
//  TRProject
//
//  Created by tarena1 on 16/7/2.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "FristCollectionViewCell.h"

@implementation FristCollectionViewCell



- (iCarousel *)icView {
    if(_icView == nil) {
        _icView = [[iCarousel alloc] init];
        _icView.type = 0;
        [self.contentView addSubview:_icView];
        _icView.backgroundColor = [UIColor yellowColor];
        [_icView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.equalTo(0);
            make.height.equalTo(kScreenW / 400 * 200);
        }];
        _pc = [UIPageControl new];
        [_icView addSubview:_pc];
        [_pc mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.bottom.equalTo(-5);
        }];
    }
    return _icView;
}

- (UIScrollView *)scrollView {
    if(_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] init];
        [self.contentView addSubview:_scrollView];
        _scrollView.backgroundColor = [UIColor redColor];
        [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(0);
            make.top.equalTo(self.icView.mas_bottom);
            make.height.equalTo(kScreenW / 400 * 100);
        }];
    }
    return _scrollView;
}

@end
