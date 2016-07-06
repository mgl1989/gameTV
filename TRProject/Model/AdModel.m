//
//  AdModel.m
//  TRProject
//
//  Created by tarena1 on 16/6/22.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "AdModel.h"

@implementation AdModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"playerGuanggao" : @"player-guanggao",
             @"appAd" : @"app-ad",
             @"pcBanner" : @"pc-banner",
             @"pc-banner2" : @"pcBanner2"};
}


+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"playerGuanggao" : [AdAllModel class],
             @"pcBanner" : [AdAllModel class],
             @"list" : [AdAllModel class],
             @"pcBanner2" : [AdAllModel class]};
 
}

@end


@implementation AdAllModel

+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"ID" : @"id",
             @"createAt" : @"create_at",
             @"slotId" : @"slot_id"};
}

@end


@implementation AdListModel



@end


