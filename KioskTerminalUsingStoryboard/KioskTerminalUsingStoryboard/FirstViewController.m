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

- (void)photoViewerViewControllerDidDone:(PhotoViewerViewController*)photoViewerView
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"prepareForSegue: sender: call");
    NSLog(@"segue.identifier=%@", segue.identifier );
    
#define kSubContents1 @"subcontents1"
    if([segue.identifier compare:kSubContents1] != NSOrderedSame ){
        PhotoViewerViewController* photoViewerViewController = (PhotoViewerViewController*)(segue.destinationViewController);
        photoViewerViewController.image = [UIImage imageNamed:segue.identifier]; // segue.identifier に直接ファイル名を割り当ててしまう
        photoViewerViewController.delegate = self;
    }
}


@end
