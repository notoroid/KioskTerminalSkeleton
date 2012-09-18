//
//  FirstViewController.m
//  KioskTerminalUsingXib
//
//  Created by Noto Kaname on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "MenuView.h"
#import "FirstViewSubContent1ViewController.h"

@interface FirstViewController ()
{

}
@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (IBAction)firedMenu:(id)sender
{
    AppDelegate* appDelegate = (AppDelegate*)([UIApplication sharedApplication].delegate);
    addSubview:appDelegate.menuView.center = self.view.center;
    
    appDelegate.menuView.alpha = .0f;
    [self.view addSubview:appDelegate.menuView];
    [UIView animateWithDuration:.5f animations:^{
        appDelegate.menuView.alpha = 1.0f;
    }];
}

- (IBAction)firedSubContents1:(id)sender {
    UIViewController* viewController = [[FirstViewSubContent1ViewController alloc] initWithNibName:@"FirstViewSubContent1ViewController" bundle:nil];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

- (IBAction)firedPhoto1:(id)sender {
    PhotoViewerViewController* photoViewerViewController = [[PhotoViewerViewController alloc] initWithNibName:@"PhotoViewerViewController" bundle:nil];
    photoViewerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    photoViewerViewController.image = [UIImage imageNamed:@"Photo1.jpg"];
    photoViewerViewController.delegate = self;
    [self presentModalViewController:photoViewerViewController animated:YES];
    
}

- (IBAction)firedPhoto2:(id)sender {
    PhotoViewerViewController* photoViewerViewController = [[PhotoViewerViewController alloc] initWithNibName:@"PhotoViewerViewController" bundle:nil];
    photoViewerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    photoViewerViewController.image = [UIImage imageNamed:@"Photo2.jpg"];
    photoViewerViewController.delegate = self;
    [self presentModalViewController:photoViewerViewController animated:YES];
    
}

- (IBAction)firedPhoto3:(id)sender {
    PhotoViewerViewController* photoViewerViewController = [[PhotoViewerViewController alloc] initWithNibName:@"PhotoViewerViewController" bundle:nil];
    photoViewerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    photoViewerViewController.image = [UIImage imageNamed:@"Photo4.jpg"];
    photoViewerViewController.delegate = self;
    [self presentModalViewController:photoViewerViewController animated:YES];
    
}

- (void)photoViewerViewControllerDidDone:(PhotoViewerViewController*)photoViewerView
{
    [self dismissModalViewControllerAnimated:YES];
}


@end
