//
//  battleViewController.h
//  battleEngine
//
//  Created by Paul Park on 1/15/14.
//  Copyright (c) 2014 Louis Tur. All rights reserved.
//

#import <UIKit/UIKit.h>

@class battleViewController;

@protocol battleViewControllerDelegate
-(void)battleViewControllerDidfinish: (battleViewController *) controller;

@end


@interface battleViewController : UIViewController

@property (weak, nonatomic) id <battleViewControllerDelegate> delegate;

-(IBAction)done:(id)sender;

@end
