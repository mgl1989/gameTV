//
//  LiveListModel.m
//  TRProject
//
//  Created by tarena1 on 16/6/21.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "LiveListModel.h"


@implementation LiveListModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"data" : [LiveListDataModel class]};
}


@end
@implementation LiveListRecommendModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"data" : [LiveListRecommendDataModel class]};
}
@end


@implementation LiveListRecommendDataModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"ID" : @"id",
             @"slotId" : @"slot_id",
             @"createAt" : @"create_at",
             
             };
}
@end


@implementation LiveListRecommendDataLinkObjectModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"weightAdd" : @"weight_add",
             @"followAdd" : @"follow_add",
             @"playCount" : @"play_count",
             @"createAt" : @"create_at",
             @"coinAdd" : @"coin_add",
             @"negativeView" : @"negative_view",
             @"defaultImage" : @"default_image",
             @"categoryName" : @"category_name",
             @"recommendImage" : @"recommend_image",
             @"lockedView" : @"locked_view",
             @"lastEndAt" : @"last_end_at",
             @"videoQuality" : @"video_quality",
             @"firstPlayAt" : @"first_play_at",
             @"followBak" : @"follow_bak",
             @"playAt" : @"play_at",
             @"categoryId" : @"category_id",
             @"categorySlug" : @"category_slug",
             @"appShufflingImage" : @"app_shuffling_image",};
}



@end


@implementation LiveListDataModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"weightAdd" : @"weight_add",
             @"followAdd" : @"follow_add",
             @"playCount" : @"play_count",
             @"negativeView" : @"negative_view",
             @"coinAdd" : @"coin_add",
             @"defaultImage" : @"default_image",
             @"categoryName" : @"category_name",
             @"createAt" : @"create_at",
             @"recommendImage" : @"recommend_image",
             @"lockedView" : @"locked_view",
             @"lastEndAt" : @"last_end_at",
             @"videoQuality" : @"video_quality",
             @"firstPlayAt" : @"first_play_at",
             @"followBak" : @"follow_bak",
             @"playAt" : @"play_at",
             @"categoryId" : @"category_id",
             @"categorySlug" : @"category_slug",
             @"appShufflingImage" : @"app_shuffling_image"};
    
}
@end


