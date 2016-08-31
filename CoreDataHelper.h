//
//  CoreDataHelper.h
//  ITSapplication
//
//  Created by Kunal on 1/31/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataHelper : NSObject

+(NSString*) directoryForDatabaseFilename;
+(NSString*) databaseFilename;

+(NSManagedObjectContext*)managedObjectContext;


+(id) insertManagedObjectOfClass:(Class)aClass inManagedObjectContext:(NSManagedObjectContext*) managedObjectContext;

+(BOOL) saveManagedObjectContext:(NSManagedObjectContext*) managedObjectContext;

+(NSArray*) fetchEntitiesForClass:(Class)aClass withPredicate:(NSPredicate*)predicate inManagedObjectContext:(NSManagedObjectContext*)managedObjectContext;

@end
