//
//  UIWindow+CurrentResponder.m
//  O2MediaProj
//
//  Created by 子曰 on 16/6/16.
//  Copyright © 2016年 DX. All rights reserved.
//

#import "UIWindow+CurrentResponder.h"

@implementation UIWindow (CurrentResponder)

+(UIView *)getCurrentResponder{

    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    if ([keyWindow respondsToSelector:@selector(firstResponder)]) {
        
        UIView *firstResponder = [keyWindow performSelector:@selector(firstResponder)];
//        [firstResponder resignFirstResponder];
        
        return firstResponder;
    }


    return nil;

}

- (UIViewController *)visibleViewController {
    UIViewController *rootViewController = self.rootViewController;
    return [UIWindow getVisibleViewControllerFrom:rootViewController];
}

+ (UIViewController *) getVisibleViewControllerFrom:(UIViewController *) vc {
    if ([vc isKindOfClass:[UINavigationController class]]) {
        return [UIWindow getVisibleViewControllerFrom:[((UINavigationController *) vc) visibleViewController]];
    } else if ([vc isKindOfClass:[UITabBarController class]]) {
        return [UIWindow getVisibleViewControllerFrom:[((UITabBarController *) vc) selectedViewController]];
    } else {
        if (vc.presentedViewController) {
            return [UIWindow getVisibleViewControllerFrom:vc.presentedViewController];
        } else {
            return vc;
        }
    }
}
@end
