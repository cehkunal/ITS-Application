//
//  EntertainmentViewController.h
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MusicPlayerViewController.h"

@interface EntertainmentViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *songsList;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong)NSString *selectedSong;

@end
