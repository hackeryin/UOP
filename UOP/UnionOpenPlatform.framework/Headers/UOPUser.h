//
//  UOPUser.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2021/6/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UOPUser : NSObject
/// 可以标识当前用户唯一id，用户登录态发生变化游戏需要传入
@property (nonatomic, copy) NSString *userID;
/// 需要额外透传的用户信息
@property (nonatomic, copy) NSString *extraJson;

@end

NS_ASSUME_NONNULL_END
