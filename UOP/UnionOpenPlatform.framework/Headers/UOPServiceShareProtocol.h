//
//  UOPServiceShareProtocol.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2021/6/23.
//

#ifndef UOPServiceShareProtocol_h
#define UOPServiceShareProtocol_h
#import "UOPSingletonService.h"

typedef NS_ENUM(NSInteger, UOPThirdShareType) {
    UOPThirdShareTypeDouyin
};

typedef NS_ENUM(NSInteger, UOPShareDouyinContentType) {
    UOPShareDouyinContentTypeVideo,
    UOPShareDouyinContentTypeImage,
    UOPShareDouyinContentTypeLink
};

typedef NS_ENUM(NSInteger, UOPShareDouyinWay) {
    UOPShareDouyinWayPublish, // 发布到至抖音
    UOPShareDouyinWayIM, // 发送给抖音好友
};

@protocol UOPServiceShareBaseContentProtocol <NSObject>
// 透传参数
@property (nonatomic, strong, nullable) NSDictionary *extraInfo;

@property (nonatomic, weak, nullable) UIViewController *presentVC;

@property (nonatomic, assign, readonly) UOPThirdShareType platformType;

@end

@protocol UOPServiceShareResponseProtocol <NSObject>

@property (nonatomic, strong) NSError * _Nullable error;

@end

@protocol UOPShareDouyinContentProtocol <UOPServiceShareBaseContentProtocol>

@property (nonatomic, copy) NSString * _Nullable state;

@property (nonatomic, copy) NSString * _Nullable hashtag;

@property (nonatomic, assign) UOPShareDouyinWay shareWay;

@property (nonatomic, assign, readonly) UOPShareDouyinContentType contentType;

@end

/// 支持抖音发布分享
@protocol UOPShareDouyinVideoContentProtocol <UOPShareDouyinContentProtocol>

// 本地视频地址，视频时长需要 > 3s
@property (nonatomic, copy) NSString * _Nullable videoPath;
/// 网络视频下载地址，如果设置了本地视频地址，则优先使用本地视频地址
@property (nonatomic, copy) NSString * _Nullable videoUrl;

@property (nonatomic, assign) BOOL withAnchor;

@end

/// 支持抖音发布分享 + 抖音好友分享
@protocol UOPShareDouyinImageContentProtocol <UOPShareDouyinContentProtocol>

/// 本地图片路径地址，如果设置了网络图片地址，则优先使用网络图片
@property (nonatomic, copy) NSString * _Nullable imagePath;
/// 网络图片下载地址
@property (nonatomic, copy) NSString * _Nullable imageUrl;

@end

/// 支持抖音好友分享
@protocol UOPShareDouyinLinkContentProtocol <UOPShareDouyinContentProtocol>

@property (nonatomic, copy) NSString * _Nonnull linkTitle;
@property (nonatomic, copy) NSString * _Nonnull linkUrlString;
@property (nonatomic, copy) NSString * _Nonnull linkDesc;
@property (nonatomic, copy) NSString * _Nonnull linkThumbImageUrlString;

@end

@protocol UOPServiceShareProtocol <UOPSingletonService>

- (void)shareContent:(id<UOPServiceShareBaseContentProtocol>)content completion:(void(^)(id<UOPServiceShareResponseProtocol>))completion;

@end


#endif /* UOPServiceShareProtocol_h */
