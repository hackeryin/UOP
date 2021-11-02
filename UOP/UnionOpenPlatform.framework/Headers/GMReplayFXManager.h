//
//  GMReplayFXManager.h
//  GMReplay
//
//  Created by Cliffe on 2021/6/9.
//

#import <Foundation/Foundation.h>
#import <Metal/Metal.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GMReplayFXManagerDataSource <NSObject>

@optional

- (id<MTLCommandQueue>)getMTLCommandQueue;

@end

@interface GMReplayFXManager : NSObject

@property (nonatomic, readonly) UIWindow *fxWindow;
@property (nonatomic, assign, readonly) BOOL isShowFXWindow;
@property (nonatomic, weak) id<GMReplayFXManagerDataSource> metalDataSource;

+ (instancetype)sharedManager;

//展示录屏功能界面，建议在游戏启动后调用该接口。当用户上一次启动周期内开启了录屏功能，调用该接口后，可以在游戏界面中展示出自由录制的icon图标
- (void)showFXMain;
//隐藏录屏功能界面，一般无需主动调用
- (void)hideFXMain;
//打开录屏功能设置界面
- (void)openRecordSettingsVC;
//打开视频列表界面
- (void)openVideoListVC;

@end

NS_ASSUME_NONNULL_END
