
#import "GameListModel.h"

@implementation GameListModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"data" : [GameListDataModel class]};
}

@end
@implementation GameListDataModel

//+ (NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
//    return @{
//             @"defaultImage" : @"default_image",
//             @"categoryName" : @"category_name",
//             @"recommendImage" : @"recommend_image",
//             @"videoQuality" : @"video_quality",
//             @"categoryId" : @"category_id",
//             @"categorySlug" : @"category_slug",
//             @"appShufflingImage" : @"app_shuffling_image"};
//
//}
@end


