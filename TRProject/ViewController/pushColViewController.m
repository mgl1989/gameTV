//
//  pushColViewController.m
//  TRProject
//
//  Created by tarena1 on 16/6/28.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "pushColViewController.h"
#import "GameListViewModel.h"
#import "LiveListCCell.h"

@interface pushColViewController ()

@property (nonatomic, strong) GameListViewModel *gameListVM;

/** 属性描述 */
@property (nonatomic) NSInteger page;

@end

@implementation pushColViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerClass:[LiveListCCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.backgroundColor =
     self.collectionView.backgroundColor = [UIColor colorWithRed:246/255.0 green:252/255.0 blue:255/255.0 alpha:1.0];
    if (self.slug == nil) {
        //右边的搜索栏
        UIButton *asd = [UIButton buttonWithType:UIButtonTypeCustom];
        [asd setImage:[UIImage imageNamed:@"btn_nav_search_normal"] forState:UIControlStateNormal];
        [asd setImage:[UIImage imageNamed:@"btn_nav_search_selected"] forState:UIControlStateHighlighted];
        UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithCustomView:asd];
        asd.frame = CGRectMake(0, 0, 25, 25);
        self.navigationItem.rightBarButtonItem = right;
        //按钮点击触发事件，遵循BlocksKit.h>第三方类库
        [asd bk_addEventHandler:^(id sender) {
            UICollectionViewFlowLayout *fl1 = [[UICollectionViewFlowLayout alloc]init];
            fl1.minimumLineSpacing = 10;
            fl1.minimumInteritemSpacing = 10;
            fl1.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
            CGFloat width1 = (kScreenW - 10 * 3)/2.0;
            fl1.itemSize = CGSizeMake(width1, width1);
        } forControlEvents:UIControlEventTouchUpInside];
        
    }else{
        UIBarButtonItem *left = [[UIBarButtonItem alloc]bk_initWithImage:[UIImage imageNamed:@"navigationBar_backButton_icon"] style:UIBarButtonItemStyleDone handler:^(id sender) {
            //点击事件回到上一页
            [self.navigationController popViewControllerAnimated:YES];
        }];
        self.navigationItem.leftBarButtonItem = left;
    }
        _page = 1;
    NSString *path = [NSString stringWithFormat:kgamePath, _slug, [NSString stringWithFormat:@"_%ld", _page]];
    [self.gameListVM getDataWithRequestMode:VMRequestModeRefresh topName:path completionHandler:^(NSError *error) {
        NSLog(@"%@", _gameListVM);
    }];
    

//    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
//        
//        [self.gameListVM getDataWithRequestMode:VMRequestModeRefresh topName:_slug page:[NSString stringWithFormat:@""] completionHandler:^(NSError *error) {
//            [self.collectionView.mj_header endRefreshing];
//            if (!error) {
//                [self.collectionView reloadData];
//            }else{
//                NSLog(@"下拉网络请求出错");
//            }
//        }];
//    }];
//    self.collectionView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
//        _page += 1;
//        [self.gameListVM getDataWithRequestMode:VMRequestModeMore topName:_slug page:[NSString stringWithFormat:@"_%ld", _page] completionHandler:^(NSError *error) {
//            [self.collectionView.mj_footer endRefreshing];
//            if (!error) {
//                [self.collectionView reloadData];
//            }else{
//                [self.view showWarning:@"上拉网络请求出错"];
//            }
//            if (self.gameListVM.sectionNum >= 90) {
//                [self.collectionView.mj_footer resetNoMoreData];
//            }else{
//                [self.collectionView.mj_footer endRefreshingWithNoMoreData];
//            }
//        }];
//    }];
// 
    [self.collectionView.mj_header beginRefreshing];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat width = (kScreenW - 3 * 10) / 2;
    CGFloat height = width / 350 * 255;
    return CGSizeMake(width, height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LiveListCCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSInteger row = indexPath.row;
    [cell.thumbIV sd_setImageWithURL:[self.gameListVM iconURLForRow:row] placeholderImage:nil];
    cell.viewLB.text = [self.gameListVM viewForRow:row];
    cell.nickLB.text = [self.gameListVM nickForRow:row];
    cell.titleLB.text = [self.gameListVM titleForRow:row];
    [cell.avatarIV sd_setImageWithURL:[self.gameListVM avatarForRow:row] placeholderImage:[UIImage imageNamed:@"23155"]];
    
    return cell;
}


- (GameListViewModel *)gameListVM {
	if(_gameListVM == nil) {
		_gameListVM = [[GameListViewModel alloc] init];
	}
	return _gameListVM;
}

@end
