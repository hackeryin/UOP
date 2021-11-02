//
//  UOPAPMManager.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2020/12/23.
//

#import <Foundation/Foundation.h>
#import "UOPAPMConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface UOPAPMManager : NSObject

+ (instancetype)sharedManager;
/// 初始化配置
- (void)startWithConfig:(UOPAPMConfig *)apmConfig;
/// 设置设备id，如果有接入APPLog，可以通过 UOPTracker 获取
- (void)setDeviceID:(NSString *)deviceID;

#pragma mark - test
+ (void)crashMock;

@end

NS_ASSUME_NONNULL_END
