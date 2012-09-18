//
//  PhotoViewerViewController.h
//  KioskTerminalUsingXib
//
//  Created by Noto Kaname on 12/09/11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PhotoViewerViewControllerDelegate;

@interface PhotoViewerViewController : UIViewController

@property(nonatomic,weak) id<PhotoViewerViewControllerDelegate> delegate;
@property(nonatomic,strong) UIImage* image;

@end

@protocol PhotoViewerViewControllerDelegate 

- (void)photoViewerViewControllerDidDone:(PhotoViewerViewController*)photoViewerView;

@end