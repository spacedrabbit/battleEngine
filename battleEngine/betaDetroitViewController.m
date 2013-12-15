//
//  betaDetroitViewController.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "betaDetroitViewController.h"
#import "Potion.h"
#import "Unit.h"
#import "Skills.h"

@interface betaDetroitViewController ()
@property (strong, nonatomic) IBOutlet UIButton *attackButton;
@property (strong, nonatomic) IBOutlet UIButton *healButton;
@property (strong, nonatomic) IBOutlet UIButton *inventoryButton;
@property (strong, nonatomic) IBOutlet UIImageView *unitSlot1;
@property (strong, nonatomic) IBOutlet UIImageView *unitSlot2;

@property (strong, nonatomic) IBOutlet UITextView *combatTextBox;

@end

@implementation betaDetroitViewController
- (IBAction)attackButton:(UIButton *)sender {
    
}
- (IBAction)healButton:(UIButton *)sender {
}
- (IBAction)inventoryButton:(UIButton *)sender {
    Potion * healthPot = [[Potion alloc] initPotion:1 withType:0];
    NSLog(@"%@", healthPot.name);
    self.combatTextBox.text = healthPot.name;
}

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

@end
