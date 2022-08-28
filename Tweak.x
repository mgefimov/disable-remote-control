#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MPRemoteCommand.h>
#import <MediaPlayer/MediaPlayer.h>
#import <UIKit/UIKit.h>

%hook MPRemoteCommandCenter
-(MPRemoteCommand *)pauseCommand { 
	return nil; 
}
-(MPRemoteCommand *)playCommand { 
	return nil; 
}
-(MPRemoteCommand *)togglePlayPauseCommand { 
	return nil; 
}
-(MPRemoteCommand *)nextTrackCommand { 
	return nil; 
}
-(MPRemoteCommand *)previousTrackCommand { 
	return nil; 
}
%end

%hook UIApplication
- (void)beginReceivingRemoteControlEvents {
}

- (void)endReceivingRemoteControlEvents {
}
%end