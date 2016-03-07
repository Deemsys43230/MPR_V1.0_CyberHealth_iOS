//
//  AppDelegate.h
//  CyberHealth
//
//  Created by Uday on 6/18/15.
//  Copyright (c) 2015 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "HKSlideMenu3DController.h"
#import "HKRotationNavigationController.h"
#import "MainViewController.h"
@class MainViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

//Metioned here due to mutiple utilization of this content
@property(nonatomic,retain)NSMutableDictionary *selectedGoal;
@property(nonatomic,retain)NSMutableDictionary *GoalMemberList;

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic)  MainViewController *VC;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
@property (strong, nonatomic)  HKSlideMenu3DController *slideMenuVC;
+ (AppDelegate *)mainDelegate;
- (void)setFirstView;
- (void)setSecondView;
-(void)updateRootViewController;
@end

