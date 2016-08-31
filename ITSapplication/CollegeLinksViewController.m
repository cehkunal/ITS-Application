//
//  CollegeLinksViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "CollegeLinksViewController.h"

@interface CollegeLinksViewController ()

@end

@implementation CollegeLinksViewController
@synthesize webView,segmentedControl;



- (void)viewDidLoad
{
    [super viewDidLoad];
    urlString=@"http://www.itsecgn.edu.in";
    url=[NSURL URLWithString:urlString];
    urlRequest=[NSURLRequest requestWithURL:url];
    [webView loadRequest:urlRequest];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)websiteSelected:(id)sender {
    switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            [webView stopLoading];
            urlString=@"http://www.itsecgn.edu.in";
            url=[NSURL URLWithString:urlString];
            urlRequest=[NSURLRequest requestWithURL:url];
            [webView loadRequest:urlRequest];
            break;
            
            case 1:
            [webView stopLoading];
            urlString=@"http://pg.its.edu.in";
            url=[NSURL URLWithString:urlString];
            urlRequest=[NSURLRequest requestWithURL:url];
            [webView loadRequest:urlRequest];
            break;
            
        default:
            
            urlString=@"https://www.google.co.in/search?site=&source=hp&q=its&oq=its&gs_l=hp.3..35i39l2j0i67l6j0j0i131.1225.1812.0.2191.4.4.0.0.0.0.473.1062.0j2j1j0j1.4.0....0...1c.1.64.hp..0.3.588.0._yZBUyDqkEs";
            url=[NSURL URLWithString:urlString];
            urlRequest=[NSURLRequest requestWithURL:url];
            [webView loadRequest:urlRequest];
            break;
    }
}

- (IBAction)ERPselected:(id)sender {
    [webView stopLoading];
    urlString=@"http://118.102.164.206/dashboard/Home/";
    url=[NSURL URLWithString:urlString];
    urlRequest=[NSURLRequest requestWithURL:url];
    [webView loadRequest:urlRequest];
}
@end
