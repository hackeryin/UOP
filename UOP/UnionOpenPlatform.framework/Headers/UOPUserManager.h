//
//  UOPUserManager.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2021/6/21.
//

#import <Foundation/Foundation.h>
#import "UOPUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface UOPUserManager : NSObject

+ (instancetype)sharedManager;
/// 当前用户信息，每次登录态发生变化时需要更新，登出时传入 nil
@property (nonatomic, strong) UOPUser *currentUser;

@end

NS_ASSUME_NONNULL_END
