//
//  ListModel.m
//  TRProject
//
//  Created by tarena1 on 16/6/22.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "ListModel.h"


@implementation ListModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"moblie-webgame" : [ListAllMoblie class],
             @"moblie-minecraft" : [ListAllMoblie class],
             @"mobile-tvgame" : [ListAllMoblie class],
             @"moblie-sport" : [ListAllMoblie class],
             @"mobile-star" : [ListAllMoblie class],
             @"mobile-recommendation" : [ListAllMoblie class],
             @"mobile-index" : [ListAllMoblie class],
             @"mobile-lol" : [ListAllMoblie class],
             @"mobile-beauty" : [ListAllMoblie class],
             @"mobile-heartstone" : [ListAllMoblie class],
             @"moblie-blizzard" : [ListAllMoblie class],
             @"mobile-dota2" : [ListAllMoblie class],
             @"moblie-dnf" : [ListAllMoblie class]
             };
}

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"moblieWebgame" : @"moblie-webgame",
             @"moblieMinecraft" : @"moblie-minecraft",
             @"mobileTvgame" : @"mobile-tvgame",
             @"moblieSport" : @"moblie-sport",
             @"mobileStar" : @"mobile-star",
             @"mobileRecommendation" : @"mobile-recommendation",
             @"mobileIndex" : @"mobile-index",
             @"mobileLol" : @"mobile-lol",
             @"mobileBeauty" : @"mobile-beauty",
             @"mobileHeartstone" : @"mobile-heartstone",
             @"moblieBlizzard" : @"moblie-blizzard",
             @"mobileDota2" : @"mobile-dota2",
             @"moblieDnf" : @"moblie-dnf"};
}
@end

@implementation ListAllMoblie
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{ @"link_object" : @"linkObject"};
}
@end


@implementation ListAllObjectMoblie
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"weightAdd" : @"weight_add",
             @"followAdd" : @"follow_add",
             @"playCount" : @"play_count",
             @"negativeView" : @"negative_view",
             @"coinAdd" : @"coin_add",
             @"defaultImage" : @"default_image",
             @"createAt" : @"create_at",
             @"categoryName" : @"category_name",
             @"recommendImage" : @"recommend_image",
             @"lockedView" : @"locked_view",
             @"lastEndAt" : @"last_end_at",
             @"videoQuality" : @"video_quality",
             @"firstPlayAt" : @"first_play_at",
             @"followBak" : @"follow_bak",
             @"appShufflingImage" : @"app_shuffling_image",
             @"categoryId" : @"category_id",
             @"categorySlug" : @"category_slug",};
}
@end


@implementation ListListModel

@end



