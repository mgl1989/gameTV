//
//  LiveListNetmanager.m
//  TRProject
//
//  Created by tarena1 on 16/6/21.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "LiveListNetmanager.h"

@implementation LiveListNetmanager

+ (id)getLiveListCompletionHandler:(void (^)(LiveListModel *, NSError *))completionHandler{
    NSString *path = [NSString stringWithFormat:kLiveListRoomPath];
    return [self GET:path parameters:nil progress:nil completionHandler:^(id jsonObject, NSError *error) {
        if (error) {
            NSLog(@"错了......%@", error);
        }else{
        
        !completionHandler ? : completionHandler([LiveListModel parseJSON:jsonObject], nil);
        }
    }];
}

+ (id)getColumnCompletionHandler:(void (^)(NSArray<columnModel *>*, NSError *))completionHandler{
    NSString *path = [NSString stringWithFormat:kcolumnPath];
    return [self GET:path parameters:nil progress:nil completionHandler:^(id jsonObject, NSError *error) {
        NSArray *array = [columnModel parseJSON:jsonObject];
        NSLog(@"%@",array);
        !completionHandler ? : completionHandler(array, nil);
    }];
}



+ (id)getAddCompletionHandler:(void (^)(AdModel *, NSError *))completionHandler{
    NSString *path = [NSString stringWithFormat:kAdPath];
    return [self GET:path parameters:nil progress:nil completionHandler:^(id jsonObject, NSError *error) {
        !completionHandler ? : completionHandler([AdModel parseJSON:jsonObject], nil);
    }];
}

//+ (id)getListCompletionHandler:(void (^)(ListModel *, NSError *))completionHandler{
//    NSString *path = [NSString stringWithFormat:kListPath];
//    return [self GET:path parameters:nil progress:nil completionHandler:^(id jsonObject, NSError *error) {
//        !completionHandler ? : completionHandler([ListModel parseJSON:jsonObject], nil);
//    }];
//}

+ (id)getGameTopName:(NSString *)TopName completionHandler:(void (^)(GameListModel *, NSError *))completionHandler{
    return [self GET:TopName parameters:nil progress:nil completionHandler:^(id jsonObject, NSError *error) {
        !completionHandler ? : completionHandler([GameListModel parseJSON:jsonObject], nil);
    }];
}

+ (id)GET:(NSString *)path parameters:(id)parameters progress:(void (^)(NSProgress *))downloadProgress completionHandler:(void (^)(id, NSError *))completionHandler{
    return [self GET:path parameters:parameters progress:downloadProgress completionHandler:^(id jsonObject, NSError *error) {
        !completionHandler?:completionHandler([ListModel parseJSON:jsonObject], nil);
    }];
}


@end
