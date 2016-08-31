//
//  MenuViewController.h
//  ITSapplication
//
//  Created by Kunal on 1/26/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MenuViewController : UIViewController
@property(nonatomic,strong)NSString* address;
@property(nonatomic,strong)NSString* city;
@property(nonatomic,strong)NSString* zip;
@property(nonatomic,strong)NSString* country;
@property(nonatomic,strong)NSString* state;
@property(nonatomic,strong)NSString* addressString;
@end
