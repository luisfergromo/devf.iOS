//
//  AppDelegate.h
//  Marvel Catalog
//
//  Created by Luis Romo on 17/10/17.
//  Copyright © 2017 Luis Romo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

