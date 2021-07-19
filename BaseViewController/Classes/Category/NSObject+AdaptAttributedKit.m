//
//  NSObject+AdaptAttributedKit.m
//  SumanSoul_Coach
//
//  Created by Sumansoul on 2021/6/10.
//  Copyright © 2021 Mateen. All rights reserved.
//

#import "NSObject+AdaptAttributedKit.h"
#import "Macro.h"

@implementation NSObject (AdaptAttributedKit)

- (CGFloat)kOriginStatsuBarHeight
{
    return [[UIApplication sharedApplication] statusBarFrame].size.height;
}

- (CGFloat)kOriginTabbarHeight
{
    if (!kIsIpad)
    {
        if ([self isSupportFaceId])
        {
            return 83.0;
        }
        else
        {
            return 49.0;
        }
    }
    else
    {
        if ([self kOriginStatsuBarHeight] > 23.0)
        {
            return 65.0;
        }
        else
        {
            return 50.0;
        }
    }
    return 0.0;
}

- (CGFloat)kSafetyTopSpace
{
    if (@available(iOS 11.0, *))
    {
        return [UIApplication sharedApplication].delegate.window.safeAreaInsets.top;
    }
    else
    {
        return 0.0;
    }
}

- (CGFloat)kSafetyBottomSpace
{
    if ([self isSupportFaceId])
    {
        return 34.0;
    }
    return 0.0;
}

- (CGFloat)kOriginNavigationHeight
{
    return [self kOriginStatsuBarHeight] + [self kOriginNavigationBarHeight];
}

- (CGFloat)kOriginNavigationBarHeight
{
    return kIsIPHONE ? 44: 50;
}

- (BOOL)isSupportFaceId
{
    if (@available(iOS 11.0, *))
    {
        UIWindow *keyWindow = [[[UIApplication sharedApplication] delegate] window];
        CGFloat bottomSafeInset = keyWindow.safeAreaInsets.bottom;
        if (bottomSafeInset == 34.0f || bottomSafeInset == 21.0f || bottomSafeInset == 20.0f)
        {
            return YES;
        }
    }
    return NO;
}

@end
