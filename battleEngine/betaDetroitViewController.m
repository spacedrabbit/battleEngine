//
//  betaDetroitViewController.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "betaDetroitViewController.h"
#import "Potion.h"
#import "Container.h"
#import "Sword.h"
#import "Skills.h"

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
@property (strong, nonatomic) Unit * player;
@property (strong, nonatomic) IBOutlet UIImageView *playerSlot1;
@property (strong, nonatomic) IBOutlet UIImageView *enemySlot1;
@property (strong, nonatomic) IBOutlet UIScrollView *buttonScrollView;
@property (strong, nonatomic) IBOutlet UITableView *inventoryView;

@end

@implementation betaDetroitViewController

- (Unit *)player {
    if (!_player){
        _player = [[Unit alloc] init];
    }
    return _player;
}

-(IBAction)setButtonHidden{
    _mageChoice.hidden = TRUE;
    _warriorChoice.hidden =TRUE;
    _rogueChoice.hidden=TRUE;
}

- (IBAction)warriorChoice:(id)sender {
    [self.player generateWarrior];
    [_playerSlot1 setImage:[UIImage imageNamed:@"knight-03.png"]];
    [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];
    //[self disableClassButtons];
    
    }
- (IBAction)mageChoice:(id)sender {
    [self.player generateMage];
    [_playerSlot1 setImage:[UIImage imageNamed:@"wizard.png"]];
    [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];

}

- (IBAction)rogueChoice:(id)sender {
    [self.player generateRogue];
    [_playerSlot1 setImage:[UIImage imageNamed:@"rogue.png"]];
    [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];
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
    Container * playerBag = [[Container alloc] initBagWith:1 withSlots:6];
    Sword * sword1 = [[Sword alloc] init];
    Sword * sword2 = [[Sword alloc] init];
    Sword * sword3 = [[Sword alloc] init];
    Sword * sword4 = [[Sword alloc] init];
    Sword * sword5 = [[Sword alloc] init];
    Sword * sword6 = [[Sword alloc] init];
    Sword * sword7 = [[Sword alloc] init];

    [playerBag addItemToBag:sword1];
    [playerBag addItemToBag:sword2];
    [playerBag addItemToBag:sword3];
    [playerBag addItemToBag:sword4];
    [playerBag addItemToBag:sword5];
    [playerBag addItemToBag:sword6];
    [playerBag addItemToBag:sword7];
    //NSLog(@"Sword1: %@", sword1.name);
    //NSLog(@"The Bag");
    //[playerBag displayBag];
    
    [playerBag removeItemFromBag:sword1];
    //NSLog(@"The Bag");
    self.combatTextBox.text = [playerBag displayBag];
    
    Unit * war = [[Unit alloc] initWarriorWithStats:@"WArrior"] ;
    Unit * monster = [[Unit alloc] initRogueWithStats:@"Monster"];
    
    NSLog(@"Current HP for War: %lu", war.healthPoints);
    
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

    
    
    [pot useItemOn:war];
    NSLog(@"After Health Pot: %lu", war.healthPoints);
    
//view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
