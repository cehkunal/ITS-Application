//
//  GamingViewController.h
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameOverViewController.h"

@interface GamingViewController : UIViewController
{
    int xspeedFruit1;
    int xspeedFruit2;
    int xspeedFruit3;
    int xspeedFruit4;
    
    int yspeedFruit1;
    int yspeedFruit2;
    int yspeedFruit3;
    int yspeedFruit4;
    int carSpeed;
    
    int HITS;
    int MISS;
}
@property (weak, nonatomic) IBOutlet UILabel *Hitslabel;
@property (weak, nonatomic) IBOutlet UILabel *MissLabel;
@property(strong)NSTimer *timer;
@property(strong)NSTimer *timer2;
-(BOOL)DoesFruit4Collected;
-(BOOL)DoesFruit3Collected;
-(BOOL)DoesFruit2Collected;
-(BOOL)DoesFruit1Collected;
@end
