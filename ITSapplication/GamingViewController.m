//
//  GamingViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "GamingViewController.h"

@interface GamingViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *fruit1View;
@property (weak, nonatomic) IBOutlet UIImageView *fruit2View;

@property (weak, nonatomic) IBOutlet UIImageView *fruit3View;

@property (weak, nonatomic) IBOutlet UIImageView *fruit4View;
@property (weak, nonatomic) IBOutlet UIImageView *carView;

@end

@implementation GamingViewController
@synthesize fruit1View,fruit2View,fruit3View,fruit4View,carView;
-(void)loadGame{
    self.timer=[NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(animaate) userInfo:nil repeats:YES];
    xspeedFruit1=10;
    xspeedFruit2=10;
    xspeedFruit3=10;
    xspeedFruit4=10;
    
    yspeedFruit1=5+arc4random()%6;
    yspeedFruit2=5+arc4random()%6;
    yspeedFruit3=5+arc4random()%6;
    yspeedFruit4=5+arc4random()%6;
    carSpeed=8;
    HITS=0;
    MISS=0;
    
    

}

-(void)animaate{
    fruit1View.center=CGPointMake(fruit1View.center.x, fruit1View.center.y+yspeedFruit1);
    fruit2View.center=CGPointMake(fruit2View.center.x, fruit2View.center.y+yspeedFruit2);
    fruit3View.center=CGPointMake(fruit3View.center.x, fruit3View.center.y+yspeedFruit3);
    fruit4View.center=CGPointMake(fruit4View.center.x, fruit4View.center.y+yspeedFruit4);
    carView.center=CGPointMake(carView.center.x+carSpeed, carView.center.y);
    
    if(fruit1View.center.y>=self.view.frame.size.height-75){
        if(fruit1View.hidden==FALSE ){
            MISS++;
            self.MissLabel.text= [NSString stringWithFormat:@"MISS: %d",MISS];
        }
        if(fruit1View.hidden==TRUE){
            HITS++;
            self.Hitslabel.text= [NSString stringWithFormat:@"SCORE: %d",HITS];
        }
        
        fruit1View.center=CGPointMake(45, 92);
        fruit1View.hidden=FALSE;
        yspeedFruit1=5+arc4random()%6;
        
    }
    
    
    if(fruit2View.center.y>=self.view.frame.size.height-75){
        if(fruit2View.hidden==FALSE ){
            MISS++;
            self.MissLabel.text= [NSString stringWithFormat:@"MISS: %d",MISS];
        }
        if(fruit2View.hidden==TRUE){
            HITS++;
            self.Hitslabel.text= [NSString stringWithFormat:@"SCORE: %d",HITS];
        }
        fruit2View.center=CGPointMake(100, 148);
        fruit2View.hidden=FALSE;
        yspeedFruit2=5+arc4random()%6;
        
        
    }
    
    if(fruit3View.center.y>=self.view.frame.size.height-75){
        if(fruit3View.hidden==FALSE ){
            MISS++;
            self.MissLabel.text= [NSString stringWithFormat:@"MISS: %d",MISS];
        }
        if(fruit3View.hidden==TRUE){
            HITS++;
            self.Hitslabel.text= [NSString stringWithFormat:@"SCORE: %d",HITS];
        }
        fruit3View.center=CGPointMake(160, 118);
        fruit3View.hidden=FALSE;
        yspeedFruit3=5+arc4random()%6;
        
    }
    
    if(fruit4View.center.y>=self.view.frame.size.height-75){
        if(fruit4View.hidden==FALSE ){
            MISS++;
            self.MissLabel.text= [NSString stringWithFormat:@"MISS: %d",MISS];
        }
        if(fruit4View.hidden==TRUE){
            HITS++;
            self.Hitslabel.text= [NSString stringWithFormat:@"SCORE: %d",HITS];
        }
        fruit4View.center=CGPointMake(240, 132);
        fruit4View.hidden=FALSE;
        yspeedFruit4=5+arc4random()%6;
        
    }
    
    
    
    if((carView.center.x>=self.view.frame.size.width)||carView.frame.origin.x<=self.view.frame.origin.x){
        carSpeed=-carSpeed;
    }
    if(carSpeed>0)
    {
        carView.image=[UIImage imageNamed:@"car.png"];
    }
    else if(carSpeed<0){
        carView.image=[UIImage imageNamed:@"car2.png"];
    }
    
    
    
    if([self DoesFruit1Collected]){
        fruit1View.hidden=TRUE;
    }
    if([self DoesFruit2Collected]){
        fruit2View.hidden=TRUE;
        
    }
    if([self DoesFruit3Collected]){
        fruit3View.hidden=TRUE;
        
    }
    if([self DoesFruit4Collected]){
        fruit4View.hidden=TRUE;
        
    }
    
    
    if(MISS>=10){
        [self endGame];
    }
    
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    GameOverViewController *vc =[segue destinationViewController];
    vc.score=HITS;
}

-(BOOL)DoesFruit4Collected{
    float n1=abs(fruit4View.center.x-carView.center.x);
    float n2=abs(fruit4View.center.y-carView.center.y);
    if (n1<50) {
        if (n2<50) {
            
            return YES;
            
        }
        
    }
    
    
    return NO;
    
}
-(BOOL)DoesFruit3Collected{
    float n1=abs(fruit3View.center.x-carView.center.x);
    float n2=abs(fruit3View.center.y-carView.center.y);
    if (n1<50) {
        if (n2<50) {
            
            return YES;
            
        }
        
    }
    
    
    return NO;
    
}
-(BOOL)DoesFruit2Collected{
    float n1=abs(fruit2View.center.x-carView.center.x);
    float n2=abs(fruit2View.center.y-carView.center.y);
    if (n1<50) {
        if (n2<50) {
            
            return YES;
            
        }
        
    }
    
    
    return NO;
    
}
-(BOOL)DoesFruit1Collected{
    float n1=abs(fruit1View.center.x-carView.center.x);
    float n2=abs(fruit1View.center.y-carView.center.y);
    if (n1<50) {
        if (n2<50) {
            
            return YES;
            
        }
        
    }
    
    
    return NO;
    
}


-(void)endGame{
    [self.timer invalidate];
    self.timer=nil;
    carView.center=CGPointMake(self.view.center.x,self.view.frame.size.height-130);
    fruit1View.center=CGPointMake(50, 130);
    fruit2View.center=CGPointMake(130, 130);
    fruit3View.center=CGPointMake(210, 130);
    fruit4View.center=CGPointMake(280, 130);
    self.Hitslabel.hidden=true;
    self.MissLabel.hidden=true;
    [self.timer2 invalidate];
    self.timer2=nil;
    [self performSegueWithIdentifier:@"gameOver" sender:self];
    
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *tch=[touches anyObject];
    if((tch.view==self.view)&&carView.center.x<self.view.frame.size.width-20){
        if(carView.frame.origin.x>self.view.frame.origin.x+20)
            carSpeed=-carSpeed;
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadGame];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];


}


@end
