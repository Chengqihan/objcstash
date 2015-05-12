//
//  NSDate+NSString.h
//  StateMachine
//
//  Created by cqh on 15/5/6.
//  Copyright (c) 2015年 Cnepay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NSString)
/**
 *  返回一个某种格式的时间字符串
 *
 *  @param formatterString 时间格式
 *
 *  @return 时间字符处
 */
+ (NSString *)dateWithFormatter:(NSString *)formatterString;

+ (void) print;

- (NSString *)dateWithFormatter:(NSString *)formatterString;
@end
