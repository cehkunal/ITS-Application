//
//  MusicPlayerViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "MusicPlayerViewController.h"

@interface MusicPlayerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *TrackLabel;
@property (weak, nonatomic) IBOutlet UILabel *DurationLabel;

@end

@implementation MusicPlayerViewController
@synthesize audioPlayer;


- (IBAction)PlayPauseButton:(id)sender {
    if (isPlaying==YES) {
        [audioPlayer pause];
        isPlaying=NO;
    } else if(isPlaying==NO) {
        [audioPlayer play];
        isPlaying=YES;
    }
}

- (IBAction)stopButton:(id)sender {
    
    audioPlayer.currentTime=0;
    [audioPlayer stop];
    isPlaying=NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.TrackLabel.text=[NSString stringWithFormat:@"Track: %@",self.selectedSong];
   
    
    
    NSString *music=[[NSBundle mainBundle]pathForResource:self.selectedSong ofType:@"mp3"];
    audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:music] error:NULL];
    audioPlayer.delegate=self;
    [audioPlayer play];
    isPlaying=YES;
    
    
     self.DurationLabel.text=[NSString stringWithFormat:@"Duration: %i minutes %i seconds",(int)audioPlayer.duration/60,(int)audioPlayer.duration%60];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
