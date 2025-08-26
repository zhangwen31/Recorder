//
//  RCDRConfig.h
//  Recorder
//
//  Created by 王恒 on 2025/6/10.
//

#import <Foundation/Foundation.h>

typedef void (^RCDREmptyResult)(BOOL isSuccess, NSString * _Nullable info);

NS_ASSUME_NONNULL_BEGIN

@interface RCDRConfig : NSObject
/**
 * SDK初始化
 */
+ (void)setup;
/**
 * 自动跳转行车记录仪界面  push
 * @param isDark 是否是暗黑模式
 */
+ (void)pushDrivingRecordeVC:(BOOL)isDark;
/**
 * 获取行车记录仪界面 如果pushDrivingRecordeVC跳转失败，可以获取该界面push过去
 */
+ (UIViewController *)getDrivingRecordeVC;

@end

NS_ASSUME_NONNULL_END
