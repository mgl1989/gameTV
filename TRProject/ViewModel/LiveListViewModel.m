//
//  LiveListViewModel.m
//  TRProject
//
//  Created by tarena1 on 16/6/23.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "LiveListViewModel.h"

@implementation LiveListViewModel

//- (void)getDataWithRequestMode:(VMRequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
//    _dataTask = [LiveListNetmanager getLiveListCompletionHandler:^(LiveListModel *model, NSError *error) {
//        if (!error) {
//            if (requestMode == VMRequestModeRefresh) {
//                [self.dataList removeAllObjects];
//            }
//            [self.dataList addObjectsFromArray:model.data];
//        }
//        completionHandler(error);
//    }];
//}

- (void)getDataWithRequestMode:(VMRequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    _dataTask = [LiveListNetmanager getLiveListCompletionHandler:^(LiveListModel *model, NSError *error) {
        if (!error) {
            if (requestMode == VMRequestModeRefresh) {
                [self.dataList removeAllObjects];
            }
            [self.dataList addObjectsFromArray:model.data];
        }
        completionHandler(error);
    }];

}

- (NSInteger)rowNumber{
    return self.dataList.count;
}

- (LiveListDataModel *)modelForRow:(NSInteger)row{
    return self.dataList[row];
}

- (NSURL *)iconURLForRow:(NSInteger)row{
    return [self modelForRow:row].thumb.yx_URL;
}

- (NSString *)nickForRow:(NSInteger)row{
    return [self modelForRow:row].nick;
}

- (NSString *)titleForRow:(NSInteger)row{
    return [self modelForRow:row].title;
}

- (NSURL *)avatarForRow:(NSInteger)row{
    return [self modelForRow:row].avatar.yx_URL;
}

- (NSString *)viewForRow:(NSInteger)row{
    NSInteger vn = [self modelForRow:row].view.integerValue;
    if (vn >= 10000) {
        return [NSString stringWithFormat:@"%.1f万", vn / 10000.0];
    }
    return [NSString stringWithFormat:@"%ld", vn];
}

#pragma mark -  Lazyload(懒加载)
- (NSMutableArray<LiveListDataModel *> *)dataList{
    if (!_dataList) {
        _dataList = [NSMutableArray new];
    }
    return _dataList;
}
@end
