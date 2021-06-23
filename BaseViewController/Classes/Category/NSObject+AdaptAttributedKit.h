//
//  NSObject+AdaptAttributedKit.h
//  SumanSoul_Coach
//
//  Created by Sumansoul on 2021/6/10.
//  Copyright © 2021 Mateen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (AdaptAttributedKit)

- (BOOL)kIsBottomViewSafeView;

- (CGFloat)kOriginNavigationHeight;

- (CGFloat)kSafetyTopSpace;

- (CGFloat)kSafetyBottomSpace;

- (CGFloat)kOriginStatsuBarHeight;

- (CGFloat)kOriginTabbarHeight;

@end

NS_ASSUME_NONNULL_END
