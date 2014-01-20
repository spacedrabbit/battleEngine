//
//  inventoryViewController.h
//  battleEngine
//
//  Created by Louis Tur on 1/15/14.
//  Copyright (c) 2014 Louis Tur. All rights reserved.
//

#import <UIKit/UIKit.h>

@class inventoryViewController, Container;

@protocol inventoryViewControllerDelegate

-(void) inventoryViewControllerDidFinish: (inventoryViewController *) controller;

@end

@interface inventoryViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) id <inventoryViewControllerDelegate> delegate;
@property (strong, nonatomic) Container * playerBag;

- (void) currentBag: (Container*) bagToDisplay;

@end
