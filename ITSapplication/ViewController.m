//
//  ViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/25/16.
//  Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "AboutTheProjectViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView* imageView;

@property (weak, nonatomic) IBOutlet UIImageView *background;
@end

@implementation ViewController
@synthesize imageView;


- (void)viewDidLoad
{
    
    timerCounter=0;
    
    timer=[NSTimer scheduledTimerWithTimeInterval:0.025 target:self selector:@selector(animateSplash) userInfo:nil repeats:YES];
   
imageView.animationImages= [NSArray arrayWithObjects:[UIImage imageNamed:@"logo3.jpg"],
    [UIImage imageNamed:@"college1.jpg"],
    [UIImage imageNamed:@"college2.jpg"],
    [UIImage imageNamed:@"logo.png"],
    [UIImage imageNamed:@"logo2.jpg"],nil];

    imageView.animationDuration=2.7;
    imageView.animationRepeatCount=4;
    [imageView startAnimating];
    
    
    
     [super viewDidLoad];
    
    
}

-(void)animateSplash{
    if(timerCounter>=125){
        self.background.image=[UIImage imageNamed:@"background.png"];
    }
  
    if (timerCounter>=250) {
        [timer invalidate];
        timer=nil;
        [self performSegueWithIdentifier:@"splashTransfer" sender:self];
    }
    timerCounter++;
    NSLog(@"TimerCounter: %d",timerCounter);
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];


}




@end
