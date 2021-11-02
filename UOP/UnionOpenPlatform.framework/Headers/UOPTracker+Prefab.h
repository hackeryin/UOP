//
//  UOPTracker+Prefab.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2021/6/17.
//

#import "UOPTracker.h"

NS_ASSUME_NONNULL_BEGIN

@interface UOPTracker (Prefab)

/*! @abstract 启动游戏
 */
+ (void)trackGameLaunch;

/*! @abstract 登录请求
     @param accountType 帐号类型，0-游客，1-非游客
 */
+ (void)trackLoginRequestWithAccountType:(NSInteger)accountType;

/*! @abstract 登录结果
     @param accountType 帐号类型，0-游客，1-非游客
     @param userID 用户唯一标识
     @param loginResult 登录结果，'fail'-失败，'success'-成功
 */
+ (void)trackLoginResultWithAccountType:(NSInteger)accountType userID:(NSString *)userID loginResult:(NSString *)loginResult;

/*! @abstract 玩游戏的时长
     @param accountType 帐号类型，0-游客，1-非游客
     @param userID 用户唯一标识
     @param duration 上报时长，单位：秒
 */
+ (void)trackPlaySessionWithAccountType:(NSInteger)accountType userID:(NSString *)userID duration:(NSInteger)duration;

/*! @abstract 支付请求
     @param accountType 帐号类型，0-游客，1-非游客
     @param userID 用户唯一标识
     @param productID 商品id
     @param productName 商品名称
     @param amount 支付金额，单位：分
 */
+ (void)trackPayRequestWithAccountType:(NSInteger)accountType
                                userID:(NSString *)userID
                             productID:(NSString *)productID
                           productName:(NSString *)productName
                                amount:(NSInteger)amount;

/*! @abstract 支付结果
     @param accountType 帐号类型，0-游客，1-非游客
     @param userID 用户唯一标识
     @param orderID 订单号
     @param payChannel 支付渠道
     @param productID 商品id
     @param productName 商品名称
     @param amount 支付金额，单位：分
     @param merchantID 商户id
     @param acturallyAmount 实际支付金额，单位：分，一般等于支付金额
     @param result 支付结果，'fail'-失败，'success'-成功
 */
+ (void)trackPayResultWithAccountType:(NSInteger)accountType
                                userID:(NSString *)userID
                              orderID:(NSString *)orderID
                           payChannel:(NSString *)payChannel
                             productID:(NSString *)productID
                           productName:(NSString *)productName
                                amount:(NSInteger)amount
                           merchantID:(NSString *)merchantID
                      acturallyAmount:(NSInteger)acturallyAmount
                               result:(NSString *)result;

// =========================================================================
/*! @abstract 初始化注册
     @param method 注册方式，@"douyin"，强制添加
     @param isSuccess 状态，强制添加
     @discussion 上报参数：@{@"method":method,@"is_success":@(isSuccess)}
 */
+ (void)trackRegisterByMethod:(NSString *)method isSuccess:(BOOL)isSuccess;

/*! @abstract 支付
     @param contentType 内容类型
     @param contentName 内容名
     @param contentID 内容id
     @param contentNumber 内容数量
     @param paymentChannel 支付渠道
     @param currency 币种
     @param currencyAmount 货币金额，不能为0
     @param isSuccess 是否成功
     @discussion 上报参数：@{@"content_type":type,
                         @"content_name":name,
                         @"content_id":contentID,
                         @"content_num":@(number),
                         @"payment_channel":channel,
                         @"currency":currency,
                         @"is_success":@(isSuccess),
                         @"currency_amount":@(amount)}
 */
+ (void)trackPurchaseEventWithContentType:(NSString *)contentType
                              contentName:(NSString *)contentName
                                contentID:(NSString *)contentID
                            contentNumber:(NSInteger)contentNumber
                           paymentChannel:(NSString *)paymentChannel
                                 currency:(NSString *)currency
                           currencyAmount:(NSInteger)currencyAmount
                                isSuccess:(BOOL)isSuccess;
@end

NS_ASSUME_NONNULL_END
