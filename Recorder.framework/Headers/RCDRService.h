//
//  RCDRService.h
//  Recorder
//
//  Created by 王恒 on 2025/8/31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RCDRService : NSObject

/**
 * 注册协议实现类
 * @param protocol  协议
 * @param handlerClass 实现该协议类
 */
+ (BOOL)registerProtocol:(Protocol *)protocol handler:(Class)handlerClass;
/**
 * 查看协议实现类是否注册
 * @param protocol  协议
 */
+ (BOOL)canImplementProtocol:(Protocol *)protocol;

+ (id)getHandlerClassWithProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
