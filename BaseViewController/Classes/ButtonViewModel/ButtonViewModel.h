//
//  ButtonViewModel.h
//  Pods
//
//  Created by Sumansoul on 2021/2/1.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ButtonViewModel : NSObject

@property (nonatomic, strong  ) UIFont   *font;
@property (nonatomic, copy    ) NSString *buttonText;
@property (nonatomic, strong  ) UIColor  *buttonTextColor;
@property (nonatomic, strong  ) UIImage  *buttonImage;
@property (nonatomic, assign  ) SEL      buttonSelector;

@end

NS_ASSUME_NONNULL_END
