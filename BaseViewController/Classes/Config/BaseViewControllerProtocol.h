//
//  BaseViewControllerProtocol.h
//  Pods
//
//  Created by mateen on 2020/12/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class BaseViewController;

@protocol BaseViewControllerConfigDataSource <NSObject>
 
@property (nonatomic, strong  ) UIFont   *defaultNavigationTitleFont;
@property (nonatomic, strong  ) UIColor  *defaultNavigationTextColor;
@property (nonatomic, strong  ) UIColor  *defaultStatusBarBackgroundColor;
@property (nonatomic, strong  ) UIColor  *defaultViewBackground;
@property (nonatomic, strong  ) UIImage  *defaultBackIcon;
@property (nonatomic, strong  ) UIColor  *tabbarNormalTextColor;
@property (nonatomic, strong  ) UIFont   *tabbarNormalFont;
@property (nonatomic, strong  ) UIColor  *tabbarSelectTextColor;
@property (nonatomic, strong  ) UIFont   *tabbarSelectFont;

- (void)superDeallocWithController:(BaseViewController *)viewController;

@end
