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
#import "Creatures.h"
#import "Skills.h"
//#import "MonstersNPC.h"

@interface betaDetroitViewController ()
@property (strong, nonatomic) IBOutlet UIButton *attackButton;
@property (strong, nonatomic) IBOutlet UIButton *healButton;
@property (strong, nonatomic) IBOutlet UIButton *inventoryButton;
@property (strong, nonatomic) IBOutlet UIImageView *unitSlot1;
@property (strong, nonatomic) IBOutlet UIImageView *unitSlot2;
@property (strong, nonatomic) IBOutlet UITextView *combatTextBox;
@property (strong, nonatomic) IBOutlet UIButton *mageChoice;
@property (strong, nonatomic) IBOutlet UIButton *warriorChoice;
@property (strong, nonatomic) IBOutlet UIButton *rogueChoice;
@property (strong, nonatomic) Unit *player;
@end

@implementation betaDetroitViewController



-(IBAction)setButtonHidden{
    _mageChoice.hidden = TRUE;
    _warriorChoice.hidden =TRUE;
    _rogueChoice.hidden=TRUE;
}

- (IBAction)warriorChoice:(id)sender {
    _player = [[Unit alloc]init];
    [_player generateWarrior];
    [_player listStats];
   
    
}

- (IBAction)mageChoice:(id)sender {
    _player = [[Unit alloc]init];
    [_player generateMage];
    [_player listStats];

}

- (IBAction)rogueChoice:(id)sender {
    _player = [[Unit alloc]init];
    [_player generateRogue];
    [_player listStats];
   
}


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
    Creatures *player = [[Creatures alloc]init];
    Creatures *monster = [[Creatures alloc]init];
    [player generateWarrior];
    [monster generateRandomMonster];
    
    [monster CompensateLevelOne];
    [monster listStats];
    [monster generateRandomMonster];
    [monster listStats];
    [monster CompensateLevelTwo];
    [monster listStats];
    [monster generateRandomMonster];
    [monster listStats];
    [monster CompensateLevelThree];
    [monster listStats];
    [monster generateRandomMonster];
    [monster listStats];
    [monster CompensateLevelFour];
    [monster listStats];
    [monster generateRandomMonster];
    [monster listStats];
    [monster CompensateLevelFive];
    [monster listStats];

    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
