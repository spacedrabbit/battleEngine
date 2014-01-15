//
//  inventoryViewController.m
//  battleEngine
//
//  Created by Louis Tur on 1/15/14.
//  Copyright (c) 2014 Louis Tur. All rights reserved.
//

#import "inventoryViewController.h"

@interface inventoryViewController ()

@end

@implementation inventoryViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)returnFromInventory:(UIBarButtonItem *)sender {
    [self.delegate inventoryViewControllerDidFinish:self];
}

@end
