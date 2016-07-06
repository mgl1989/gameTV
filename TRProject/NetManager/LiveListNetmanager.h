//
//  LiveListNetmanager.h
//  TRProject
//
//  Created by tarena1 on 16/6/21.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "TRBaseViewModel.h"
#import "LiveListModel.h"
#import "columnModel.h"
#import "AdModel.h"
#import "ListModel.h"
#import "GameListModel.h"

@interface LiveListNetmanager : NSObject
//+ (id)getLiveListPage:(NSInteger)page completionHandler:(void(^)(LiveListModel *model, NSError *error))completionHandler;
//直播房间列表
+ (id)getLiveListCompletionHandler:(void(^)(LiveListModel *model, NSError *error))completionHandler;
//栏目列表
+ (id)getColumnCompletionHandler:(void(^)(NSArray<columnModel *>*model, NSError *error))completionHandler;
//广告
+ (id)getAddCompletionHandler:(void(^)(AdModel *model, NSError *error))completionHandler;
//列表
//+ (id)getListCompletionHandler:(void(^)(ListModel *model, NSError *error))completionHandler;
+ (id)getFristLivePath:(NSString *)path parmeters:(NSDictionary *)parameters progress:(NSProgress *)downloadProgress completionHandler:(void(^)(id model,NSError *error))completionHandler;
//游戏列表
+ (id)getGameTopName:(NSString *)TopName completionHandler:(void(^)(GameListModel *model, NSError *error))completionHandler;

@end


