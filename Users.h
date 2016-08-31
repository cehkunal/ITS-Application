//
//  Users.h
//  ITSapplication
//
//  Created by Kunal on 1/31/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Users : NSManagedObject

@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSString * password;

@end
