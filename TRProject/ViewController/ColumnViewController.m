//
//  ColumnViewController.m
//  TRProject
//
//  Created by tarena1 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "ColumnViewController.h"
#import "ColumnViewCell.h"
#import "columnViewModel.h"
#import "pushColViewController.h"
#import "GameListViewModel.h"


@interface ColumnViewController ()<UICollectionViewDelegateFlowLayout>


/** <#属性描述#> */
@property (nonatomic) columnViewModel *columnVM;


@end

@implementation ColumnViewController

static NSString * const reuseIdentifier = @"ColumnCell";
- (IBAction)searchBt:(id)sender {
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.collectionView registerClass:[ColumnViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    //手动布局按钮点击事件的页面
//    UIButton *asd = [UIButton buttonWithType:UIButtonTypeCustom];
//    [asd setImage:[UIImage imageNamed:@"btn_nav_search_normal"] forState:UIControlStateNormal];
//    [asd setImage:[UIImage imageNamed:@"btn_nav_search_selected"] forState:UIControlStateHighlighted];
//    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithCustomView:asd];
//    asd.frame = CGRectMake(0, 0, 25, 25);
//    self.navigationItem.rightBarButtonItem = right;
//    [asd bk_addEventHandler:^(id sender) {
////        UICollectionViewFlowLayout *fl1 = [[UICollectionViewFlowLayout alloc] init];
//        
//    } forControlEvents:UIControlEventTouchUpInside];
    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
 
        [self.columnVM getDataWithRequestMode:VMRequestModeRefresh completionHandler:^(NSError *error) {
            [self.collectionView.mj_header endRefreshing];
            if (!error) {
                [self.collectionView reloadData];
            }
            [self.collectionView.mj_header endRefreshing];
        }];
       
    }];
    
    [self.collectionView.mj_header beginRefreshing];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}



- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat width = (kScreenW - 4 * 15) / 3;
    CGFloat height = width / 180 * 320;
    return CGSizeMake(width, height);    
}


#pragma mark <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.columnVM.rowNumber;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ColumnViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSInteger row = indexPath.row;
    
    [cell.imageView sd_setImageWithURL:[self.columnVM iconURLForRow:row] placeholderImage:[UIImage imageNamed:@"分类"]];
    cell.nameLb.text = [self.columnVM nameForRow:row];
   
    
    return cell;
}

#pragma mark - Methods
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    UICollectionViewFlowLayout *f1 = [UICollectionViewFlowLayout new];
    pushColViewController *pc = [[pushColViewController alloc] initWithCollectionViewLayout:f1];
    pc.slug = [self.columnVM slugForRow:indexPath.row];
    pc.title = [self.columnVM nameForRow:indexPath.row];
    //隐藏tabbar(标签栏)
    pc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pc animated:YES];
}




#pragma mark -  Lazyload(懒加载)
- (columnViewModel *)columnVM{
    if (!_columnVM) {
        _columnVM = [[columnViewModel alloc] init];
    }
    return _columnVM;
}

@end
