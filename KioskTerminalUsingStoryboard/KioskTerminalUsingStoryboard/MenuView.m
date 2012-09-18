//
//  MenuView.m
//  KioskTerminalUsingXib
//
//  Created by Noto Kaname on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MenuView.h"
#import "AppDelegate.h"

@implementation MenuView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (IBAction)firedFirst:(id)sender {
    AppDelegate* appDelegate = (AppDelegate*)([UIApplication sharedApplication].delegate);
    
#define FIRST_VIEWCONTROLLER_INDEX 0
    if( appDelegate.tabBarController.selectedIndex != FIRST_VIEWCONTROLLER_INDEX ){
        appDelegate.tabBarController.selectedIndex = FIRST_VIEWCONTROLLER_INDEX;
    }else{
        // 以下のコードでルートのViewControllerに移動する
        UINavigationController* naigationController = (UINavigationController*)([appDelegate.tabBarController.viewControllers objectAtIndex:0]);
        [naigationController popToRootViewControllerAnimated:NO];
        // ここまで
        
        // ここからメニューを消去する
        [UIView animateWithDuration:.5f animations:^{
                self.alpha = .0f;
            }
             completion:^(BOOL finished) {
                 [self removeFromSuperview]; 
                 self.alpha = 1.0f; // メニューを復元
                 
             }
         // ここまで
         ];
    }
    
}

- (IBAction)firedSecond:(id)sender {
    AppDelegate* appDelegate = (AppDelegate*)([UIApplication sharedApplication].delegate);
    
#define SECOND_VIEWCONTROLLER_INDEX 1
    if( appDelegate.tabBarController.selectedIndex != SECOND_VIEWCONTROLLER_INDEX ){
        appDelegate.tabBarController.selectedIndex = SECOND_VIEWCONTROLLER_INDEX;
    }else{
        // 以下のコードでルートのViewControllerに移動する
        UINavigationController* naigationController = (UINavigationController*)([appDelegate.tabBarController.viewControllers objectAtIndex:0]);
        [naigationController popToRootViewControllerAnimated:NO];
        // ここまで
        
        // ここからメニューを消去する
        [UIView animateWithDuration:.5f animations:^{
            self.alpha = .0f;
        }
                         completion:^(BOOL finished) {
                             [self removeFromSuperview]; 
                             self.alpha = 1.0f; // メニューを復元
                             
                         }
         // ここまで
         ];
    }
}

- (IBAction)firedThird:(id)sender {
    AppDelegate* appDelegate = (AppDelegate*)([UIApplication sharedApplication].delegate);
    
#define THIRD_VIEWCONTROLLER_INDEX 2
    if( appDelegate.tabBarController.selectedIndex != THIRD_VIEWCONTROLLER_INDEX ){
        appDelegate.tabBarController.selectedIndex = THIRD_VIEWCONTROLLER_INDEX;
    }else{
        // 以下のコードでルートのViewControllerに移動する
        UINavigationController* naigationController = (UINavigationController*)([appDelegate.tabBarController.viewControllers objectAtIndex:0]);
        [naigationController popToRootViewControllerAnimated:NO];
        // ここまで
        
        // ここからメニューを消去する
        [UIView animateWithDuration:.5f animations:^{
            self.alpha = .0f;
        }
                         completion:^(BOOL finished) {
                             [self removeFromSuperview]; 
                             self.alpha = 1.0f; // メニューを復元
                             
                         }
         // ここまで
         ];
    }
}

- (IBAction)firedFourth:(id)sender {
    AppDelegate* appDelegate = (AppDelegate*)([UIApplication sharedApplication].delegate);
    
#define FOURTH_VIEWCONTROLLER_INDEX 3
    if( appDelegate.tabBarController.selectedIndex != FOURTH_VIEWCONTROLLER_INDEX ){
        appDelegate.tabBarController.selectedIndex = FOURTH_VIEWCONTROLLER_INDEX;
    }else{
        // 以下のコードでルートのViewControllerに移動する
        UINavigationController* naigationController = (UINavigationController*)([appDelegate.tabBarController.viewControllers objectAtIndex:0]);
        [naigationController popToRootViewControllerAnimated:NO];
        // ここまで
        
        // ここからメニューを消去する
        [UIView animateWithDuration:.5f animations:^{
            self.alpha = .0f;
        }
                         completion:^(BOOL finished) {
                             [self removeFromSuperview]; 
                             self.alpha = 1.0f; // メニューを復元
                             
                         }
         // ここまで
         ];
    }
}

@end
