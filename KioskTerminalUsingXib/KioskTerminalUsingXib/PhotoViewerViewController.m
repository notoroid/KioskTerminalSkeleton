//
//  PhotoViewerViewController.m
//  KioskTerminalUsingXib
//
//  Created by Noto Kaname on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PhotoViewerViewController.h"

@interface PhotoViewerViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PhotoViewerViewController
@synthesize imageView;
@synthesize delegate=_delegate;
@synthesize image=image;

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
 
    self.imageView.image = image;
    
}

- (void)viewDidUnload
{
    [self setImageView:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	   return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (IBAction)firedDone:(id)sender {
    [_delegate photoViewerViewControllerDidDone:self];
}

@end
