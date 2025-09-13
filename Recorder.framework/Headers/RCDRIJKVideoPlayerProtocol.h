//
//  RCDRIJKVideoPlayerProtocol.h
//  Recorder
//
//  Created by 王恒 on 2025/9/13.
//

#ifndef RCDRIJKVideoPlayerProtocol_h
#define RCDRIJKVideoPlayerProtocol_h

#import "RCDRProtocol.h"

/// 播放模式
typedef NS_ENUM(NSInteger, RCDRIJKVideoPlaybackMode) {
    RCDRIJKVideoPlaybackModeOriginal, // 源文件播放（HTTP）
    RCDRIJKVideoPlaybackModeRTSP      // RTSP 流播放
};


@protocol RCDRIJKVideoPlayerProtocol <RCDRProtocol>

- (UIView *)getPlayerViewWithUrlStr:(NSURL *)url inMode:(RCDRIJKVideoPlaybackMode)mode;

- (void)play;

- (void)prepareToPlay;

/// 暂停播放
- (void)pause;

/// 继续播放
- (void)resume;

/// 停止播放
- (void)stop;

/// 调整音量
/// @param volume 音量值（0.0~1.0）
- (void)setVolume:(float)volume;

#pragma mark - 截图核心方法
- (UIImage *)takeScreenshot;

/// 设置日志  k_IJK_LOG_VERBOSE
- (void)setLogLevel;

@end


#endif /* RCDRIJKVideoPlayerProtocol_h */
