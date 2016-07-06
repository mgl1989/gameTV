//
//  LiveListCCell.m
//  TRProject
//
//  Created by tarena1 on 16/6/27.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "LiveListCCell.h"

@implementation LiveListCCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.contentView.backgroundColor = [UIColor redColor];
        [self thumbIV];
        [self iconV];
        [self viewLB];
        [self nickLB];
        [self avatarIV];
        [self titleLB];
    }
    return self;
}



- (UIImageView *)thumbIV {
    if(_thumbIV == nil) {
        _thumbIV = [[UIImageView alloc] init];
        [self.contentView addSubview:_thumbIV];
       
        [_thumbIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.equalTo(0);
            make.height.equalTo(self.contentView.size.width / 350 * 200);
        }];
      
    }
    return _thumbIV;
}

- (UILabel *)viewLB {
    if(_viewLB == nil) {
        _viewLB = [[UILabel alloc] init];
        [_thumbIV addSubview:_viewLB];
        [_viewLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(3);
            make.bottom.equalTo(-3);
        }];
        _viewLB.font = [UIFont systemFontOfSize:10];
        _viewLB.textColor = [UIColor whiteColor];
    }
    return _viewLB;
}

- (UIView *)iconV {
    if(_iconV == nil) {
        _iconV = [[UIView alloc] init];
      
        [self.contentView addSubview:_iconV];
        [_iconV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.thumbIV.mas_bottom);
            make.left.right.bottom.equalTo(0);
        }];
        _iconV.backgroundColor = [UIColor whiteColor];
    }
    return _iconV;
}

- (UIImageView *)avatarIV {
    if(_avatarIV == nil) {
        _avatarIV = [[UIImageView alloc] init];
        [_iconV addSubview:_avatarIV];
        [_avatarIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(0);
            make.left.equalTo(1);
            make.size.equalTo(24);
        }];
        _avatarIV.layer.cornerRadius = 12;
        _avatarIV.clipsToBounds = YES;
    }
    return _avatarIV;
}

- (UILabel *)nickLB {
    if(_nickLB == nil) {
        _nickLB = [[UILabel alloc] init];
        [_iconV addSubview:_nickLB];
        [_nickLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.avatarIV.mas_top);
            make.left.equalTo(self.avatarIV.mas_right).equalTo(3);
            make.height.equalTo(15);
        }];
        _nickLB.font = [UIFont systemFontOfSize:10];
    }
    return _nickLB;
}

- (UILabel *)titleLB {
    if(_titleLB == nil) {
        _titleLB = [[UILabel alloc] init];
        [_iconV addSubview:_titleLB];
        [_titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.nickLB.mas_bottom).equalTo(1);
            make.left.equalTo(self.nickLB.mas_left).equalTo(0);
            make.height.equalTo(10);
        }];
        _titleLB.font = [UIFont systemFontOfSize:8];
        _titleLB.textColor = [UIColor grayColor];
    }
    return _titleLB;
}



@end
