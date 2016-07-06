//
//  columnModel.m
//  TRProject
//
//  Created by tarena1 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "columnViewModel.h"

@implementation columnViewModel

- (void)getDataWithRequestMode:(VMRequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    _dataTask = [LiveListNetmanager getColumnCompletionHandler:^(NSArray<columnModel *>*model, NSError *error) {
        if (!error) {
            if (requestMode == VMRequestModeRefresh) {
                [self.dataList removeAllObjects];
            }
            [self.dataList addObjectsFromArray:model];
        }
        completionHandler(error);
    }];
}



- (NSInteger)rowNumber{
    return self.dataList.count;
}

- (columnModel *)modelForRow:(NSInteger)row{
    return self.dataList[row];
}

- (NSString *)nameForRow:(NSInteger)row{
    return [self modelForRow:row].name;
}

- (NSURL *)iconURLForRow:(NSInteger)row{
    return [self modelForRow:row].image.yx_URL;
}

-(NSString *)slugForRow:(NSInteger)row{
    return self.dataList[row].slug;
}

#pragma mark -  Lazyload(懒加载)
- (NSMutableArray<columnModel *> *)dataList{
    if (!_dataList) {
        _dataList = [NSMutableArray new];
    }
    return _dataList;
}
@end
