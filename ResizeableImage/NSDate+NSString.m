/*
 G: 公元时代，例如AD公元
 yy: 年的后2位
 yyyy: 完整年
 MM: 月，显示为1-12
 MMM: 月，显示为英文月份简写,如 Jan
 MMMM: 月，显示为英文月份全称，如 Janualy
 dd: 日，2位数表示，如02
 d: 日，1-2位显示，如 2
 EEE: 简写星期几，如Sun
 EEEE: 全写星期几，如Sunday
 aa: 上下午，AM/PM
 H: 时，24小时制，0-23
 K：时，12小时制，0-11
 m: 分，1-2位
 mm: 分，2位
 s: 秒，1-2位
 ss: 秒，2位
 S: 毫秒
 Z：GMT
 
 
 yyyy-MM-dd HH:mm:ss.SSS
 yyyy-MM-dd HH:mm:ss
 yyyy-MM-dd
 MM dd yyyy
 */

#import "NSDate+NSString.h"
#import <objc/runtime.h>
@implementation NSDate (NSString)

static char DATEFORMATTERKEY;

+ (NSString *)dateWithFormatter:(NSString *)formatterString {
    
    NSDateFormatter *dateFormatter = objc_getAssociatedObject(self, &DATEFORMATTERKEY);
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        NSLog(@"%@",dateFormatter);
        objc_setAssociatedObject(self, &DATEFORMATTERKEY, dateFormatter, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    if (!formatterString.length) {
        dateFormatter.dateFormat = @"yyyyMMddHHmmss";
        
    }else dateFormatter.dateFormat = formatterString;
    
    return [dateFormatter stringFromDate:[NSDate date]];
}

- (NSString *)dateWithFormatter:(NSString *)formatterString {
    
    NSDateFormatter *dateFormatter = objc_getAssociatedObject(self, &DATEFORMATTERKEY);
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        NSLog(@" - (NSString *)dateWithFormatter %@",dateFormatter);
        objc_setAssociatedObject(self, &DATEFORMATTERKEY, dateFormatter, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    if (!formatterString.length) {
        dateFormatter.dateFormat = @"yyyyMMddHHmmss";
        
    }else dateFormatter.dateFormat = formatterString;
    
    return [dateFormatter stringFromDate:self];
}


+ (void) print {
    NSLog(@"print === %@",objc_getAssociatedObject(self, &DATEFORMATTERKEY));
}
          
@end
