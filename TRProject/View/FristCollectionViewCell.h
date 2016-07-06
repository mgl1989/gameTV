//
//  FristCollectionViewCell.h
//  TRProject
//
//  Created by tarena1 on 16/7/2.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FristCollectionViewCell.h"
#import <iCarousel.h>
@interface FristCollectionViewCell : UICollectionViewCell

/** <#属性描述#> */
@property (nonatomic) iCarousel *icView;

/** <#属性描述#> */
@property (nonatomic) UIScrollView *scrollView;

/** <#属性描述#> */
@property (nonatomic) UIPageControl *pc;


@end
