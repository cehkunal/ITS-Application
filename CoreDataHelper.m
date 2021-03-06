//
//  CoreDataHelper.m
//  ITSapplication
//
//  Created by Kunal on 1/31/16.
//  Copyright (c) 2016 Kunal. All rights reserved.
//

#import "CoreDataHelper.h"

@implementation CoreDataHelper

+(NSString*) directoryForDatabaseFilename{
    return [NSHomeDirectory() stringByAppendingString:@"/Library/Private Documents"];
}

+(NSString*) databaseFilename{
    
    return @"database.sqlite";
}

+(NSManagedObjectContext*)managedObjectContext{
    
    NSError* error;
    
    [[NSFileManager defaultManager] createDirectoryAtPath:[CoreDataHelper directoryForDatabaseFilename] withIntermediateDirectories:YES attributes:nil error:&error];
    
    if (error){
        NSLog(@"%@",[error localizedDescription]);
        return nil;
    }
    
    NSString* path = [NSString stringWithFormat:@"%@/%@",[CoreDataHelper directoryForDatabaseFilename], [CoreDataHelper databaseFilename]];
    
    NSURL* url = [NSURL fileURLWithPath:path];
    
    
    
    NSManagedObjectModel* managedModel = [NSManagedObjectModel mergedModelFromBundles:nil];
    
    NSPersistentStoreCoordinator* storeCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:managedModel];
    
    if (![storeCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:url options:nil error:&error]){
        NSLog(@"%@",[error localizedDescription]);
        return nil;
    }
    
    NSManagedObjectContext* managedContext = [[NSManagedObjectContext alloc] init];
    
    [managedContext setPersistentStoreCoordinator:storeCoordinator];
    
    return managedContext;
}


+(id) insertManagedObjectOfClass:(Class)aClass inManagedObjectContext:(NSManagedObjectContext*) managedObjectContext{
    
    NSManagedObject* managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass(aClass) inManagedObjectContext:managedObjectContext];
    
    
    return managedObject;
}

+(BOOL) saveManagedObjectContext:(NSManagedObjectContext*) managedObjectContext{
    NSError* error;
    
    if (![managedObjectContext save:&error]){
        NSLog(@"%@", [error localizedDescription]);
        return NO;
    }
    
    return YES;
}

+(NSArray*) fetchEntitiesForClass:(Class)aClass withPredicate:(NSPredicate*)predicate inManagedObjectContext:(NSManagedObjectContext*)managedObjectContext{
    
    NSError* error;
    
    NSFetchRequest* fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription* entityDescription = [NSEntityDescription entityForName:NSStringFromClass(aClass) inManagedObjectContext:managedObjectContext];
    
    [fetchRequest setEntity:entityDescription];
    
    [fetchRequest setPredicate:predicate];
    
    NSArray* items = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    if (error){
        NSLog(@"%@", [error localizedDescription]);
        return nil;
    }
    
    return items;
}


@end