//
//  RCDRIJKPlayerNotificationProtocol.h
//  Recorder
//
//  Created by 王恒 on 2025/9/13.
//

#ifndef RCDRIJKPlayerNotificationProtocol_h
#define RCDRIJKPlayerNotificationProtocol_h

#import "RCDRProtocol.h"

/// 电影结束原因
typedef NS_ENUM(NSInteger, RCDRIJKMPMovieFinishReason) {
    RCDRIJKMPMovieFinishReasonNone,
    RCDRIJKMPMovieFinishReasonPlaybackEnded,
    RCDRIJKMPMovieFinishReasonPlaybackError,
    RCDRIJKMPMovieFinishReasonUserExited
};

/// 电影播放状态
typedef NS_ENUM(NSInteger, RCDRIJKMPMoviePlaybackState) {
    RCDRIJKMPMoviePlaybackStateStopped,
    RCDRIJKMPMoviePlaybackStatePlaying,
    RCDRIJKMPMoviePlaybackStatePaused,
    RCDRIJKMPMoviePlaybackStateInterrupted,
    RCDRIJKMPMoviePlaybackStateSeekingForward,
    RCDRIJKMPMoviePlaybackStateSeekingBackward
};

@protocol RCDRIJKPlayerNotificationProtocol <RCDRProtocol>


- (void)moviePlayBackDidFinish:(RCDRIJKMPMovieFinishReason)reason error:(NSError *)error;

- (void)moviePlayBackStateDidChange:(RCDRIJKMPMoviePlaybackState)playbackState;

- (void)firstFrameRendered;


@end


#endif /* RCDRIJKPlayerNotificationProtocol_h */
