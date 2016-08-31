//
//  MusicPlayerViewController.h
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>


@interface MusicPlayerViewController : UIViewController<AVAudioPlayerDelegate>
{
    
    BOOL isPlaying;
}
@property(strong,nonatomic)NSString *selectedSong;
 @property(retain) AVAudioPlayer *audioPlayer;

@end
