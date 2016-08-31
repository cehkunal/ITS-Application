//
//  EntertainmentViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "EntertainmentViewController.h"

@interface EntertainmentViewController ()

@end

@implementation EntertainmentViewController
@synthesize selectedSong;

- (void)viewDidLoad
{
    [super viewDidLoad];
    songsList=[NSArray arrayWithObjects:@"Bhaag Milkha Bhaag - Mastano ka jhund",@"Chennai Express-Kashmir tu main Kanyakumari",@"Jannat-Tujhe Sochta hu",@"Jannat - Jannatein Kahan",@"Murder2- Hale Dil",@"Murder-2 Aye Khuda",@"Jeene Laga hu",@"Rang Jo lagyo",@"Shanghai - Duaa",@"Ishq Wala love",@"Vele - SOTY",@"Pani Da Rang",@"Mar Jaaiyan ",@"Soniye",@"Mumkin Nahi", nil];
    
    
    }

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return songsList.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    selectedSong=songsList[indexPath.row];
    
    [self performSegueWithIdentifier:@"MusicPlayer" sender:tableView];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"MusicPlayer"]) {
        MusicPlayerViewController *MP=[segue destinationViewController];
        MP.selectedSong=selectedSong;
    }
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID=@"CellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    UIImage *musicLogo = [UIImage imageNamed:@"musicLogo.png"];
    cell.imageView.image=musicLogo;
    cell.textLabel.text=songsList[indexPath.row];
    
  
    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
