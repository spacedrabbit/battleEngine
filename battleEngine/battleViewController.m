//
//  battleViewController.m
//  battleEngine
//
//  Created by Paul Park on 1/15/14.
//  Copyright (c) 2014 Louis Tur. All rights reserved.
//

#import "battleViewController.h"

@interface battleViewController ()

@end

@implementation battleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

/*
 When the 'done' button is selected, a call to 'self.delgate' is made. 'self.delegate' is mainViewController because it was set in the prepareForSegue: method in the MainViewController.
 
 It calls the flipsideViewControllerDidFinish: method on itself, that is the flipsideViewController object.
 
 This *method* is described in the MainViewController class
 (Remember, this *protocol* is defined in the flipsideViewController header file)
 
 */

- (IBAction)done:(id)sender
{
    [self.delegate battleViewControllerDidfinish:self];
}

@end
