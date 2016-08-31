//
//  MenuViewController.m
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize address,state,country,zip,city,addressString;

- (IBAction)logoutPressed:(id)sender {
    
    UIAlertView *alertView =[[UIAlertView alloc]initWithTitle:@"Logged Out" message:@"Logged Out successfully. Please Login to Continue" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
    [self performSegueWithIdentifier:@"logoutSuccess" sender:self];
}
- (IBAction)GetDirectionPressed:(id)sender {
    
    address =@"I.T.S Engineering College";
    city =@"Knowledge Park 3 , Greater Noida";
    state=@"UP";
    zip =@"201308";
    country=@"India";
    
    addressString = [NSString stringWithFormat:@"%@ %@ %@ %@ %@",address,city,state,zip,country];
    
    
    NSDictionary *addressDictionary =@{
    (NSString*)kABPersonAddressStreetKey:address ,
    (NSString*)kABPersonAddressCityKey : city ,
    (NSString*)kABPersonAddressStateKey:state ,
    (NSString*)kABPersonAddressZIPKey:zip ,
    (NSString*)kABPersonAddressCountryKey:country
                             };
    
    
    CLGeocoder *geocoder =[[CLGeocoder alloc]init];
    [geocoder geocodeAddressString:addressString completionHandler:^(NSArray *placemarks, NSError *error) {
        if (error) {
            NSLog(@"The geocoder reported an error %@",[error localizedDescription]);
        }
        if (placemarks && placemarks.count>0) {
            NSLog(@"%d",placemarks.count);
            CLPlacemark *placemark = placemarks[0];
            CLLocation *location =placemark.location;
            MKPlacemark *mkPlacemark = [[MKPlacemark alloc]initWithCoordinate:location.coordinate addressDictionary:addressDictionary];
            
            MKMapItem *mapItem = [[MKMapItem alloc]initWithPlacemark:mkPlacemark];
            [mapItem openInMapsWithLaunchOptions:nil];
            
        }
    }];
    
    NSLog(@"done");
    
    
    
}
@end
