//
//  UOPShareDouyinContent.h
//  UnionOpenPlatform
//
//  Created by 张远征 on 2021/6/10.
//

#import "UOPShareBaseContent.h"
#import "UOPServiceShareProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// @abstract 抽象基类，请使用具体的子类分享
@interface UOPShareDouyinContent : UOPShareBaseContent<UOPShareDouyinContentProtocol>

@end

/// 支持抖音发布分享
@interface UOPShareDouyinVideoContent : UOPShareDouyinContent<UOPShareDouyinVideoContentProtocol>

@end

/// 支持抖音发布分享 + 抖音好友分享
@interface UOPShareDouyinImageContent : UOPShareDouyinContent<UOPShareDouyinImageContentProtocol>

@end

/// 支持抖音好友分享
@interface UOPShareDouyinLinkContent : UOPShareDouyinContent<UOPShareDouyinLinkContentProtocol>

@end

NS_ASSUME_NONNULL_END
