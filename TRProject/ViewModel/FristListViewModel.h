//
//  FristListViewModel.h
//  TRProject
//
//  Created by tarena1 on 16/7/2.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "TRBaseViewModel.h"
#import "LiveListNetmanager.h"

@interface FristListViewModel : TRBaseViewModel

/** <#属性描述#> */
@property (nonatomic, strong) ListModel *model;

/** <#属性描述#> */
@property (nonatomic, strong) NSArray<ListModel *> *list;

/** <#属性描述#> */
@property (nonatomic, readonly) NSInteger number;


@end
