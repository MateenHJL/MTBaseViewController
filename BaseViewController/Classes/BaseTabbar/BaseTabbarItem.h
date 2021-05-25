//
//  BaseTabbarItem.h
//  CustomerTemplate
//
//  Created by Moyun on 15/5/22.
//  Copyright (c) 2015年 caimiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseTabbarItem : NSObject

@property (nonatomic,strong) id classInstanceType;
@property (nonatomic,strong) UIImage  *normalImage;
@property (nonatomic,strong) UIImage  *selectedImage;
@property (nonatomic,copy  ) NSString *normalTitle;
@property (nonatomic,assign) NSInteger tabbarItemType;
@property (nonatomic,copy  ) NSString *badgeValue;


@end
