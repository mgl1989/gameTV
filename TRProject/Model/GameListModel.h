//
//  GameListModel.h
//  TRProject
//
//  Created by tarena1 on 16/6/28.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GameListDataModel;
@interface GameListModel : NSObject


@property (nonatomic, assign) NSInteger page;                          

@property (nonatomic, strong) NSArray<GameListDataModel *> *data;

@property (nonatomic, copy) NSString *icon;

@property (nonatomic, assign) NSInteger size;

@property (nonatomic, assign) NSInteger total;

@property (nonatomic, assign) NSInteger pageCount;


@end
@interface GameListDataModel  : NSObject
//default_image -> defaultImage
@property (nonatomic, copy) NSString *defaultImage;

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *weight;

@property (nonatomic, copy) NSString *title;
//category_name -> categoryName
@property (nonatomic, copy) NSString *categoryName;

@property (nonatomic, assign) BOOL hidden;

@property (nonatomic, copy) NSString *intro;
//category_slug -> categorySlug
@property (nonatomic, copy) NSString *categorySlug;
//recommend_image -> recommendImage
@property (nonatomic, copy) NSString *recommendImage;
//app_shuffling_image -> appShufflingImage
@property (nonatomic, copy) NSString *appShufflingImage;

@property (nonatomic, copy) NSString *level;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, copy) NSString *grade;

@property (nonatomic, copy) NSString *nick;

@property (nonatomic, copy) NSString *announcement;

@property (nonatomic, copy) NSString *uid;

@property (nonatomic, copy) NSString *avatar;

@property (nonatomic, copy) NSString *view;
//video_quality -> videoQuality
@property (nonatomic, copy) NSString *videoQuality;
//category_id -> categoryId
@property (nonatomic, copy) NSString *categoryId;

@property (nonatomic, assign) NSInteger follow;

@end

