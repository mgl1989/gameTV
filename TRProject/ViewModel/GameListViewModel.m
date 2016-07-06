//
//  GameListViewModel.m
//  TRProject
//
//  Created by tarena1 on 16/6/28.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "GameListViewModel.h"

@implementation GameListViewModel

- (void)getDataWithRequestMode:(VMRequestMode)requestMode topName:(NSString *)topName completionHandler:(void (^)(NSError *))completionHandler{
    
    [LiveListNetmanager getGameTopName:topName completionHandler:^(GameListModel *model, NSError *error) {
        if (!error) {
            if (requestMode == VMRequestModeRefresh) {
                [self.GameList removeAllObjects];
            }
            [self.GameList addObjectsFromArray:model.data];
            _sectionNum = model.data.count;
        }else{
            NSLog(@">>>>>>>>>>>错了<<<<<<<<<<<<");
        }
        !completionHandler ? : completionHandler(error);
    }];
}



- (NSInteger)rowNumber{
    return self.GameList.count;
}

- (GameListDataModel *)modelForRow:(NSInteger)row{
    return self.GameList[row];
}

- (NSString *)categoryNameForRow:(NSInteger)row{
    NSString *topname = [self modelForRow:row].categoryId;
    return topname;
}

- (NSURL *)iconURLForRow:(NSInteger)row{
    return [self modelForRow:row].thumb.yx_URL;
}

- (NSString *)nickForRow:(NSInteger)row{
    return [self modelForRow:row].nick;
}

- (NSString *)titleForRow:(NSInteger)row{
    return self.GameList[row].title;
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



- (NSMutableArray<GameListDataModel *> *)GameList {
    if(_GameList == nil) {
        _GameList = [[NSMutableArray alloc] init];
    }
    return _GameList;
}
@end
