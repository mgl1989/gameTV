//
//  LiveListCViewController.m
//  TRProject
//
//  Created by tarena1 on 16/6/27.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "LiveListCViewController.h"
#import "LiveListCCell.h"
#import "LiveListViewModel.h"
#import "GameListViewModel.h"


@interface LiveListCViewController ()<UICollectionViewDelegateFlowLayout>

@property (nonatomic) LiveListViewModel *liveListVM;

@end

@implementation LiveListCViewController

static NSString * const reuseIdentifier = @"LiveListCCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerClass:[LiveListCCell class] forCellWithReuseIdentifier:@"LiveListCCell"];
    _page = 0;
    
    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        {
            [self.liveListVM getDataWithRequestMode:VMRequestModeRefresh completionHandler:^(NSError *error) {
                if (!error) {
                    [self.collectionView reloadData];
                }
                [self.collectionView.mj_header endRefreshing];
            }];

        }
    }];
    self.collectionView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        [self.liveListVM getDataWithRequestMode:VMRequestModeMore completionHandler:^(NSError *error) {
            [self.collectionView.mj_footer endRefreshing];
            if (!error) {
                [self.collectionView reloadData];
            }
        }];
    }];
    [self.collectionView beginHeaderRefresh];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat width = (kScreenW - 3 * 10) / 2;
    CGFloat height = width / 350 * 255;
    return CGSizeMake(width, height);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"%ld", self.liveListVM.rowNumber);
    return self.liveListVM.rowNumber;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LiveListCCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSInteger row = indexPath.row;
    [cell.thumbIV sd_setImageWithURL:[self.liveListVM iconURLForRow:row] placeholderImage:nil];
    cell.viewLB.text = [self.liveListVM viewForRow:row];
    cell.nickLB.text = [self.liveListVM nickForRow:row];
    cell.titleLB.text = [self.liveListVM titleForRow:row];
    [cell.avatarIV sd_setImageWithURL:[self.liveListVM avatarForRow:row] placeholderImage:[UIImage imageNamed:@"23155"]];
    
   
    
    
    return cell;
}


- (LiveListViewModel *)liveListVM {
	if(_liveListVM == nil) {
		_liveListVM = [[LiveListViewModel alloc] init];
	}
	return _liveListVM;
}


@end
