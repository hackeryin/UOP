//
//  UOPManager.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2021/6/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UOPManager : NSObject

+ (instancetype)sharedManager;
/// 应用id
@property (nonatomic, copy, readonly) NSString *appID;

- (void)startConfigWithAppID:(NSString *)appID;


/// sdk 版本号
@property (nonatomic, copy, readonly) NSString *sdkVersion;
/// sdk 名称
@property (nonatomic, copy, readonly) NSString *sdkName;

@end

NS_ASSUME_NONNULL_END
