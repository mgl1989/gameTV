//
//  LiveListViewModel.h
//  TRProject
//
//  Created by tarena1 on 16/6/23.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRBaseViewModel.h"
#import "LiveListNetmanager.h"

@interface LiveListViewModel : TRBaseViewModel

@property (nonatomic) NSMutableArray<LiveListDataModel *> *dataList;

@property (nonatomic) NSInteger rowNumber;

@property (nonatomic, getter=ishasMore) BOOL hasMore;

- (NSURL *)iconURLForRow:(NSInteger)row;
- (NSString *)titleForRow:(NSInteger)row;
- (NSString *)nickForRow:(NSInteger)row;
- (NSURL *)avatarForRow:(NSInteger)row;
- (NSString *)viewForRow:(NSInteger)row;

@end
