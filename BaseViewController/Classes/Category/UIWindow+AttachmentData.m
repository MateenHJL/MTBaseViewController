//
//  UIWindow+AttachmentData.m
//  AdventurerStory
//
//  Created by Mateen on 2022/11/8.
//

#import "UIWindow+AttachmentData.h"
#import <objc/runtime.h>

#define kHasStatusBar @"kHasStatusBar"

@implementation UIWindow (AttachmentData)

- (void)setHasStatusBar:(BOOL)hasStatusBar
{
    objc_setAssociatedObject(self, kHasStatusBar, [NSNumber numberWithBool:hasStatusBar], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)hasStatusBar
{
    NSNumber *hasStatusBar = objc_getAssociatedObject(self, kHasStatusBar);
    return [hasStatusBar boolValue];
}


@end
