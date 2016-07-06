//
//  AdModel.h
//  TRProject
//
//  Created by tarena1 on 16/6/22.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AdAllModel,AdListModel;
@interface AdModel : NSObject

//player-guanggao -> playerGuanggao
@property (nonatomic, strong) NSArray<AdAllModel *> *playerGuanggao;
//app-ad -> appAd
@property (nonatomic, strong) NSArray *appAd;
//pc-banner -> pcBanner
@property (nonatomic, strong) NSArray<AdAllModel *> *pcBanner;

@property (nonatomic, strong) NSArray<AdListModel *> *list;
//pc-banner2 -> pcBanner2
@property (nonatomic, strong) NSArray<AdAllModel *> *pcBanner2;


@end
@interface AdAllModel  : NSObject

@property (nonatomic, assign) NSInteger status;

@property (nonatomic, copy) NSString *subtitle;
//id -> ID
@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *ext;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *fk;

@property (nonatomic, copy) NSString *thumb;

@property (nonatomic, copy) NSString *link;
//create_at -> createAt
@property (nonatomic, copy) NSString *createAt;
//slot_id -> slotId
@property (nonatomic, assign) NSInteger slotId;

@property (nonatomic, assign) NSInteger priority;

@end
//
//@interface AdPcBannerModel : NSObject
//
//@property (nonatomic, assign) NSInteger status;
//
//@property (nonatomic, copy) NSString *subtitle;
////id -> ID
//@property (nonatomic, assign) NSInteger ID;
//
//@property (nonatomic, copy) NSString *ext;
//
//@property (nonatomic, copy) NSString *title;
//
//@property (nonatomic, copy) NSString *fk;
//
//@property (nonatomic, copy) NSString *thumb;
//
//@property (nonatomic, copy) NSString *link;
//
//@property (nonatomic, copy) NSString *create_at;
//
//@property (nonatomic, assign) NSInteger slot_id;
//
//@property (nonatomic, assign) NSInteger priority;
//
//@end

@interface AdListModel  : NSObject

@property (nonatomic, copy) NSString *slug;

@property (nonatomic, copy) NSString *name;

@end
//
//@interface AdPcBanner2Model : NSObject
//
//@property (nonatomic, assign) NSInteger status;
//
//@property (nonatomic, copy) NSString *subtitle;
////id -> ID
//@property (nonatomic, assign) NSInteger ID;
//
//@property (nonatomic, copy) NSString *ext;
//
//@property (nonatomic, copy) NSString *title;
//
//@property (nonatomic, copy) NSString *fk;
//
//@property (nonatomic, copy) NSString *thumb;
//
//@property (nonatomic, copy) NSString *link;
//
//@property (nonatomic, copy) NSString *create_at;
//
//@property (nonatomic, assign) NSInteger slot_id;
//
//@property (nonatomic, assign) NSInteger priority;

//@end

