//
//  AppDelegate.m
//  KioskTerminalUsingXib
//
//  Created by Noto Kaname on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "MenuView.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;
@synthesize menuView=_menuView;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UINib nibWithNibName:@"MenuView" bundle:nil] instantiateWithOwner:self options:nil];
        // MenuView をロードする
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    UIViewController *viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    UINavigationController* navController1 = [[UINavigationController alloc] initWithRootViewController:viewController1];
    navController1.navigationBarHidden = YES;
    
    UIViewController *viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    UINavigationController* navController2 = [[UINavigationController alloc] initWithRootViewController:viewController2];
    navController2.navigationBarHidden = YES;
    
    UIViewController *viewController3 = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    UINavigationController* navController3 = [[UINavigationController alloc] initWithRootViewController:viewController3];
    navController3.navigationBarHidden = YES;
 
    UIViewController *viewController4 = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    UINavigationController* navController4 = [[UINavigationController alloc] initWithRootViewController:viewController4];
    navController4.navigationBarHidden = YES;
    
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:navController1, navController2,navController3, navController4, nil];
    self.window.rootViewController = self.tabBarController;
    
    [self.window makeKeyAndVisible];
    
    [self showTabBarController:NO animated:NO];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

#pragma mark -
#pragma mark tabBarControll

- (void) showTabBarController:(BOOL) show animated:(BOOL)animated
{
	static BOOL isShow = YES;
    
    UITabBarController* tabBarController = _tabBarController;
	
	if( isShow != show ){
		isShow = show;		
		
		//	Swf2mp3p1AppDelegate* appDelegate = (Swf2mp3p1AppDelegate*) [UIApplication sharedApplication].delegate;
		// ビューの矩形状態を確認する
		UITabBar* tabBar = tabBarController.tabBar;
		
		CGRect tabBarFrame = tabBar.frame;
		
		if( show != YES ) 
			tabBarFrame.origin.y += tabBarFrame.size.height;
		else
			tabBarFrame.origin.y -= tabBarFrame.size.height;
		
        void (^animations)(void) = ^{
            tabBar.frame = tabBarFrame;
            for( UIView* targetView in tabBarController.view.subviews ){
                if( targetView != tabBar ){
                    CGRect viewFrame = targetView.frame;
                    
                    if( show != YES ) 
                        viewFrame.size.height += tabBarFrame.size.height;
                    else
                        viewFrame.size.height -= tabBarFrame.size.height;
                    
                    targetView.frame = viewFrame;
                }
            }
        };
        
        if( animated )
            [UIView animateWithDuration:.3f animations:animations];
        else
            animations();
	}
}

@end
