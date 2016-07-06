//
//  GameListViewModel.h
//  TRProject
//
//  Created by tarena1 on 16/6/28.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "TRBaseViewModel.h"
#import <Foundation/Foundation.h>
#import "LiveListNetmanager.h"

@interface GameListViewModel : TRBaseViewModel


@property (nonatomic) NSMutableArray<GameListDataModel *> *GameList;

@property (nonatomic) NSInteger rowNumber;

@property (nonatomic) NSString *page;

@property (nonatomic) NSInteger sectionNum;

@property (nonatomic, getter=ishasMore) BOOL hasMore;

- (NSURL *)iconURLForRow:(NSInteger)row;
- (NSString *)titleForRow:(NSInteger)row;
- (NSString *)nickForRow:(NSInteger)row;
- (NSURL *)avatarForRow:(NSInteger)row;
- (NSString *)viewForRow:(NSInteger)row;
- (NSString *)categoryNameForRow:(NSInteger)row;

- (void)getDataWithRequestMode:(VMRequestMode)requestMode topName:(NSString *)topName completionHandler:(void(^)(NSError *error))completionHandler;


@end
