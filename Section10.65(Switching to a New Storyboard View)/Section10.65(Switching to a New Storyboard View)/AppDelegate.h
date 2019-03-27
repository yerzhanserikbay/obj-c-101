//
//  AppDelegate.h
//  Section10.65(Switching to a New Storyboard View)
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

