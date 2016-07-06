//
//  columnModel.h
//  TRProject
//
//  Created by tarena1 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "TRBaseViewModel.h"

#import "LiveListNetmanager.h"

@interface columnViewModel : TRBaseViewModel

/** <#属性描述#> */
@property (nonatomic) NSMutableArray<columnModel *> *dataList;

/** <#属性描述#> */
@property (nonatomic) NSInteger rowNumber;

- (NSURL *)iconURLForRow:(NSInteger)row;
- (NSString *)nameForRow:(NSInteger)row;
- (NSString *)slugForRow:(NSInteger)row;


@end
