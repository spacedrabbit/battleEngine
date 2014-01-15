//
//  inventoryViewController.h
//  battleEngine
//
//  Created by Louis Tur on 1/15/14.
//  Copyright (c) 2014 Louis Tur. All rights reserved.
//

#import <UIKit/UIKit.h>

@class inventoryViewController;

@protocol inventoryViewControllerDelegate

-(void) inventoryViewControllerDidFinish: (inventoryViewController *) controller;

@end

@interface inventoryViewController : UIViewController

@property (weak, nonatomic) id <inventoryViewControllerDelegate> delegate;

@end
