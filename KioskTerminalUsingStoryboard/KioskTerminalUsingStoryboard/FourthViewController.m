//
//  FourthViewController.m
//  KioskTerminalUsingXib
//
//  Created by Noto Kaname on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FourthViewController.h"
#import "AppDelegate.h"
#import "MenuView.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (IBAction)firedMenu:(id)sender {
    AppDelegate* appDelegate = (AppDelegate*)([UIApplication sharedApplication].delegate);
    addSubview:appDelegate.menuView.center = self.view.center;
    
    appDelegate.menuView.alpha = .0f;
    [self.view addSubview:appDelegate.menuView];
    [UIView animateWithDuration:.5f animations:^{
        appDelegate.menuView.alpha = 1.0f;
    }];
}

- (void)photoViewerViewControllerDidDone:(PhotoViewerViewController*)photoViewerView
{
    [self dismissModalViewControllerAnimated:YES];
}

@end
