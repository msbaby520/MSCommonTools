//
//  UIWindow+CurrentResponder.h
//  O2MediaProj
//
//  Created by 子曰 on 16/6/16.
//  Copyright © 2016年 DX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (CurrentResponder)

+(UIView *)getCurrentResponder;
- (UIViewController *)visibleViewController;
@end
