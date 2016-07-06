//
//  ListModel.h
//  TRProject
//
//  Created by tarena1 on 16/6/22.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ListAllMoblie,ListAllObjectMoblie,ListListModel;
@interface ListModel : NSObject

//moblie-webgame -> moblieWebgame
@property (nonatomic, strong) NSArray<ListAllMoblie *> *moblieWebgame;
//moblie-minecraft -> moblieMinecraft
@property (nonatomic, strong) NSArray<ListAllMoblie *> *moblieMinecraft;
//mobile-tvgame -> mobileTvgame
@property (nonatomic, strong) NSArray<ListAllMoblie *> *mobileTvgame;
//moblie-sport -> moblieSport
@property (nonatomic, strong) NSArray<ListAllMoblie *> *moblieSport;
//mobile-star -> mobileStar
@property (nonatomic, strong) NSArray<ListAllMoblie *> *mobileStar;
//mobile-recommendation -> mobileRecommendation
@property (nonatomic, strong) NSArray<ListAllMoblie *> *mobileRecommendation;
//mobile-index -> mobileIndex
@property (nonatomic, strong) NSArray<ListAllMoblie *> *mobileIndex;
//mobile-lol -> mobileLol
@property (nonatomic, strong) NSArray<ListAllMoblie *> *mobileLol;
//mobile-beauty -> mobileBeauty
@property (nonatomic, strong) NSArray<ListAllMoblie *> *mobileBeauty;
//mobile-heartstone -> mobileHeartstone
@property (nonatomic, strong) NSArray<ListAllMoblie *> *mobileHeartstone;
//moblie-blizzard -> moblieBlizzard
@property (nonatomic, strong) NSArray<ListAllMoblie *> *moblieBlizzard;

@property (nonatomic, strong) NSArray<ListListModel *> *list;
//mobile-dota2 -> mobileDota2
@property (nonatomic, strong) NSArray<ListAllMoblie *> *mobileDota2;
//moblie-dnf -> moblieDnf
@property (nonatomic, strong) NSArray<ListAllMoblie *> *moblieDnf;

@end
@interface ListAllMoblie : NSObject
//link_object -> linkObject
@property (nonatomic, strong) ListAllObjectMoblie *linkObject;

@end

@interface ListAllObjectMoblie : NSObject

@property (nonatomic, copy) NSString *nick;
//weight_add -> weightAdd
@property (nonatomic, copy) NSString *weightAdd;

@property (nonatomic, copy) NSString *uid;

@property (nonatomic, copy) NSString *level;
//follow_add -> followAdd
@property (nonatomic, copy) NSString *followAdd;

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *check;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, assign) BOOL hidden;
//play_count -> playCount
@property (nonatomic, copy) NSString *playCount;
//negative_view -> negativeView
@property (nonatomic, copy) NSString *negativeView;

@property (nonatomic, copy) NSString *view;

@property (nonatomic, copy) NSString *grade;

@property (nonatomic, copy) NSString *coin;
//coin_add -> coinAdd
@property (nonatomic, copy) NSString *coinAdd;
//default_image -> defaultImage
@property (nonatomic, copy) NSString *defaultImage;
//create_at -> createAt
@property (nonatomic, copy) NSString *createAt;

@property (nonatomic, copy) NSString *intro;
//category_name -> categoryName
@property (nonatomic, copy) NSString *categoryName;

@property (nonatomic, copy) NSString *source;

@property (nonatomic, copy) NSString *status;

@property (nonatomic, copy) NSString *avatar;
//recommend_image -> recommendImage
@property (nonatomic, copy) NSString *recommendImage;
//locked_view -> lockedView
@property (nonatomic, copy) NSString *lockedView;
//last_end_at -> lastEndAt
@property (nonatomic, copy) NSString *lastEndAt;
//video_quality -> videoQuality
@property (nonatomic, copy) NSString *videoQuality;

@property (nonatomic, copy) NSString *announcement;
//first_play_at -> firstPlayAt
@property (nonatomic, copy) NSString *firstPlayAt;

@property (nonatomic, copy) NSString *follow;
//follow_bak ->  followBak
@property (nonatomic, copy) NSString *followBak;

@property (nonatomic, copy) NSString *play_at;

@property (nonatomic, copy) NSString *weight;
//app_shuffling_image -> appShufflingImage
@property (nonatomic, copy) NSString *appShufflingImage;
//category_id -> categoryId
@property (nonatomic, copy) NSString *categoryId;

@property (nonatomic, copy) NSString *title;
//category_slug -> categorySlug
@property (nonatomic, copy) NSString *categorySlug;

@end

@interface ListListModel : NSObject

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *name;

@end

