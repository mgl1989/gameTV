//
//  AppDelegate.m
//  TRProject
//
//  Created by jiyingxin on 16/2/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "AppDelegate.h"

#import "UMMobClick/MobClick.h"
#import "LiveListNetmanager.h"

@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //全局默认配置
    [self setupGlobalConfig];
//    [LiveListNetmanager getGameTopName:@"lol" completionHandler:^(GameListModel *model, NSError *error) {
//        NSLog(@"");
//    }];
    
    
    return YES;
}

@end
