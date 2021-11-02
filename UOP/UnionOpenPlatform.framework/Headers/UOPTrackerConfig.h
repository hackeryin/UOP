//
//  UOPTrackerConfig.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2021/6/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UOPTrackerConfig : NSObject

@property (nonatomic, copy) NSString *appID;

@property (nonatomic, strong) NSDictionary *launchOptions;

@property (nonatomic, copy) NSString *appName;

#pragma mark - 可选属性
/// 默认是"App Store"
@property (nonatomic, copy) NSString *channel;
/// debug开关，可以输出一些log，release版需要设置为NO
@property (nonatomic, assign) BOOL isDebug;

@end

NS_ASSUME_NONNULL_END
