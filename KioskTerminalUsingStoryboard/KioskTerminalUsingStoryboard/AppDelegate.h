//
//  AppDelegate.h
//  KioskTerminalUsingXib
//
//  Created by Noto Kaname on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MenuView;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) IBOutlet MenuView* menuView;

@end
