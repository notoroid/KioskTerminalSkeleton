//
//  FirstViewSubContent1ViewController.m
//  KioskTerminalUsingXib
//
//  Created by Noto Kaname on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewSubContent1ViewController.h"
#import "AppDelegate.h"
#import "MenuView.h"
#import "PhotoViewerViewController.h"

@interface FirstViewSubContent1ViewController ()

@end

@implementation FirstViewSubContent1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
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

- (IBAction)firedBack:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)photoViewerViewControllerDidDone:(PhotoViewerViewController*)photoViewerView
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"prepareForSegue: sender: call");
    NSLog(@"segue.identifier=%@", segue.identifier );
    
    PhotoViewerViewController* photoViewerViewController = (PhotoViewerViewController*)(segue.destinationViewController);
    photoViewerViewController.image = [UIImage imageNamed:segue.identifier]; // segue.identifier に直接ファイル名を割り当ててしまう
    photoViewerViewController.delegate = self;
}

@end
