//
//  UIColor+Hex.h
//  MedProj
//
//  Created by 子曰 on 16/6/12.
//  Copyright © 2016年 DX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)color;

//从十六进制字符串获取颜色，
//color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

+(UIColor *)colorWithR:(CGFloat)r withG:(CGFloat)g withB:(CGFloat)b;

+ (UIColor *)hexStringToColor:(NSString *)stringToConvert;

+ (UIColor *)colorWithHexNumber:(NSUInteger)hexColor;
@end
