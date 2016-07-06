//
//  columnModel.m
//  TRProject
//
//  Created by tarena1 on 16/6/21.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "columnModel.h"

@implementation columnModel
+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"ID" : @"id",
             @"firstLetter" : @"first_letter"};
//    return  @{@"slug" : @"columnModel.slug",
//              @"first_letter" : @"columnModel.firstLetter",
//              @"status" : @"columnModel.status",
//              @"id" : @"columnModel.ID",
//              @"prompt" : @"columnModel.prompt",
//              @"image" : @"columnModel.image",
//              @"thumb" : @"columnModel.thumb",
//              @"priority" : @"columnModel.priority",
//              @"name" : @"columnModel.name"};

}
@end



