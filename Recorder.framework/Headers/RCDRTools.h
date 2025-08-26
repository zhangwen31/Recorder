//
//  RCDRTools.h
//  Recorder
//
//  Created by 王恒 on 2025/6/7.
//

#import <Foundation/Foundation.h>

#define RCDRLocalizedString(key) [RCDRTools languageConversion:key]

NS_ASSUME_NONNULL_BEGIN

@interface RCDRTools : NSObject

+ (UIWindow *)getKeyWindow;

/**
 *  app上边距status值
 */
+ (CGFloat)getAppTopSpace;

/**
 *  app与其他上边距status差值
 */
+ (CGFloat)getAppTopActiveSpace;

/**
 *  app下边距值
 */
+ (CGFloat)getAppTopBottomSpace;

/// 当前时间，时间戳
+ (NSString *)GetNowTimes;

/// 将某个时间转化成 时间戳
+(NSInteger)timeSwitchTimestamp:(NSString *)formatTime andFormatter:(NSString *)format;

+ (UIWindow *)frontWindow;

/**
 *  计算文字尺寸
 *
 *  @param text    需要计算尺寸的文字
 *  @param font    文字的字体
 *  @param maxSize 文字的最大尺寸
 */
+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize;

+ (UIViewController *)getCurrentVC;

+ (NSString *)getAppName;

+ (NSString *)getBundleIdentifier;

//多语言切换
+(NSString *)languageConversion:(NSString *)string;

/// 检测结束是否成功
/// @param dict 网络请求回掺
+ (BOOL)checkResult:(NSDictionary *)dict;

/// 展示结束错误
/// @param dict 网络请求回掺
+ (void)showResultInfo:(NSDictionary *)dict;

/**
 @brief 替换类的类方法
 @param cls 要修改的类的类对象
 @param originalSelector 要替换的方法
 @param swizzledSelector 新的方法实现
 */
extern void RCDRSwizzleClassMethod(Class cls, SEL originalSelector, SEL swizzledSelector);

/**
 @brief 替换类的对象方法
 @param cls 要修改的类的类对象
 @param originalSelector 要替换的方法
 @param swizzledSelector 新的方法实现
 */
extern void RCDRSwizzleInstanceMethod(Class cls, SEL originalSelector, SEL swizzledSelector);

/**
@brief 交换不同类中两个  对象方法    友好提示:自定义的方法可以写在任何的自定义类中 ）
@param originalCls 被交换的类的类对象
@param swizzledCls 用来交换的类的类对象
@param originalSelector 被交换的方法
@param swizzledSelector 用来交换的方法
  */
extern void RCDRSwizzleDifferentClassInstanceMethod(Class originalCls,Class swizzledCls,SEL originalSelector, SEL swizzledSelector);


/**
@brief 交换不同类中两个  类方法 （  友好提示:自定义的方法可以写在任何的自定义类中 ）
@param originalCls 被交换的类的类对象
@param swizzledCls 用来交换的类的类对象
@param originalSelector 被交换的方法
@param swizzledSelector 用来交换的方法
  */
extern void RCDRSwizzleDifferentClassClassMethod(Class originalCls,Class swizzledCls,SEL originalSelector, SEL swizzledSelector);

+ (void)setupIsDark:(BOOL)isDark;

+ (BOOL)getDark;

+ (UIColor *)navTitleColor;

+ (UIColor *)blackColor;

+ (UIColor *)titleColor;

+ (UIColor *)titleWhiteColor;

+ (UIColor *)title60Color;

+ (UIColor *)title40Color;

+ (UIColor *)white85Color;

+ (UIColor *)whiteColor;

+ (UIColor *)white80Color;

+ (UIColor *)backgroundColor;

+ (UIColor *)lineColor;

+ (UIColor *)bottomLineFillColor;

+ (UIColor *)buttonColor;

+ (UIColor *)closeButColor;

+ (UIColor *)textFieldtColor;

/// 获取当前时间并转换为 "20210123153650" 格式
+ (NSString *)currentTimeToFormatString;

/// 获取当前时间 "2021/01/23"
+ (NSString *)currentTimeString;

//横屏
+ (void)setNewOrientation:(BOOL)fullscreen;
//是否允许转向 屏幕
+ (void)setAllowRotation:(BOOL)allowRotation;
//获取屏幕方向
+ (UIInterfaceOrientationMask)getInterfaceOrientationMask;

@end

NS_ASSUME_NONNULL_END
