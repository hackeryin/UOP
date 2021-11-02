//
//  UOPShareManager.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2021/6/7.
//

#import <Foundation/Foundation.h>
#import "UOPShareBaseContent.h"
#import "UOPShareResponse.h"

NS_ASSUME_NONNULL_BEGIN

@interface UOPShareManager : NSObject

+ (instancetype)sharedManager;

+ (void)registerAppKey:(NSString *)appKey
          forPlatform:(UOPThirdShareType)type;

+ (BOOL)isPlatformAvailable:(UOPThirdShareType)type;

+ (BOOL)isAppInstalled:(UOPThirdShareType)type;

- (void)shareContent:(UOPShareBaseContent *)content completion:(void(^)(UOPShareResponse *))completion;

#pragma mark - handle URL


/**
 *  打开第三方平台,接入谷歌和Facebook在9.0后 必须在application:openURL:url options:中调用该接口
 * @attention 必须在主线程中调用
 *
 * @param   url         第三方应用打开APP时传递过来的URL
 * @param   options     第三方应用打开APP时传递过来的options
 * @return  成功返回YES，失败返回NO。
 */
+ (BOOL)handleOpenURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options;

/**
 *  打开第三方平台,接入谷歌和Facebook在8.0系统中 必须在application:openURL:sourceApplication:annotation:中调用该接口
 * @attention 必须在主线程中调用
 *
 * @param   url                     第三方应用打开APP时传递过来的URL
 * @param   sourceApplication       第三方应用打开APP时传递过来的sourceApplication
 * @paran   annotation              第三方应用打开APP是传递过来的annotation
 * @return  成功返回YES，失败返回NO。
 */
+ (BOOL)handleOpenURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

/**
 *  @param launchOptions 就是启动application:didFinishLaunchingWithOptions中的options
 */
+ (void)didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

#pragma mark - cancel share process
/// 当通过链接分享视频或者图片的时候需要下载，调用该接口取消下载过程，放弃分享
+ (void)cancelDownloadProcess;
/// 当通过链接分享视频或者图片的时候会下载至沙盒，调用该接口清理之前下载的缓存
+ (void)cleanSandbox;
@end

NS_ASSUME_NONNULL_END
