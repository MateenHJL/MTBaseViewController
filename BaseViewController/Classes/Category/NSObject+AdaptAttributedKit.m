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


- (BOOL)kIsBottomViewSafeView
{
    if (@available(iOS 11.0, *))
    {
        return [UIApplication sharedApplication].delegate.window.safeAreaInsets.bottom > 0;
    }
    return NO;
}

- (CGFloat)kOriginStatsuBarHeight
{
    if (@available(iOS 13.0, *))
    {
        UIStatusBarManager *manager = [UIApplication sharedApplication].windows.firstObject.windowScene.statusBarManager;
        return manager ? manager.statusBarFrame.size.height: 20.0;
    }
    else
    {
        return [UIApplication sharedApplication].statusBarFrame.size.height;
    }
}

- (CGFloat)kOriginTabbarHeight
{
    if (!kIsIpad)
    {
        if ((kIPhoneX || kIPhoneXR || kIPhoneXS || kIPhoneXSMax || kIphone12Mini || kIphone12Pro || kIphone12ProMax))
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
    if (@available(iOS 11.0, *))
    {
        return [UIApplication sharedApplication].delegate.window.safeAreaInsets.bottom;
    }
    return 0.0;
}

- (CGFloat)kOriginNavigationHeight
{
    return kNavigationBarHeight + [self kOriginStatsuBarHeight];
}

@end
