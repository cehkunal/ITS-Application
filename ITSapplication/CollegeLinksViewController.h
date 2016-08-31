//
//  CollegeLinksViewController.h
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollegeLinksViewController : UIViewController
{
    NSString *urlString;
    NSURL *url;
    NSURLRequest *urlRequest;
}
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)websiteSelected:(id)sender;
- (IBAction)ERPselected:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end
