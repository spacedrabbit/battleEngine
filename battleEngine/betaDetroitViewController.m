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
    Potion * healthPot = [[Potion alloc] initPotionType:Health ofSize:Minor];
    Potion * manaPot = [[Potion alloc] initPotionType:Mana ofSize:Lesser];
    NSLog(@"Mana Pot: %@", manaPot.name);
    NSLog(@"Health Pot: %@", healthPot.name);
    self.combatTextBox.text = [NSString stringWithFormat:@"%@\n %@", healthPot.name, manaPot.name];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self testSwords];
    
//view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) testPotions{
    Container * playerBag = [[Container alloc] initBagWith:1 withSlots:6];

    Unit * war = [[Unit alloc] initWarriorWithStats:@"WArrior"] ;
    //Unit * monster = [[Unit alloc] initRogueWithStats:@"Monster"];
    
    Potion * healthPot = [[Potion alloc] initPotionType:Health ofSize:Lesser];
    Potion * manaPot = [[Potion alloc] initPotionType:Mana ofSize:Titan];
    [playerBag addItemToBag:healthPot];
    
    NSLog(@"Current HP: %lu  MP:%lu", war.healthPoints, war.manaPoints);
    NSLog(@"Warrior takes 100 damage and uses 5 mp");
    war.healthPoints -= 100;
    war.manaPoints -= 5;
    NSLog(@"Current HP: %lu  MP:%lu", war.healthPoints, war.manaPoints);
    
    [healthPot useItemOn:war];
    [manaPot useItemOn:war];
    
    [playerBag removeItemFromBag:healthPot];
    
    
    NSLog(@"Current HP: %lu  MP:%lu", war.healthPoints, war.manaPoints);
    
}
-(void)testSwords {
    
    NSArray * stats = [NSArray arrayWithObjects:@25, @0, @0, @0, @1.23, nil];
    NSArray * stats2 = [NSArray arrayWithObjects:@100, @0, @20, @0, @3.13, nil];
    NSArray * stats3 = [NSArray arrayWithObjects:@1250, @0, @120, @40, @0.0, nil];
    Container * playerBag = [[Container alloc] initBagWith:1 withSlots:6];
    
    Sword * sword1 = [[Sword alloc] initWeaponType:sword inSlots:weapon1Slot withStats:stats withAttackRange:NSMakeRange(25, 10) andMagicRange:NSMakeRange(0, 0)];
    NSLog(@"Stats: \n %@", [sword1 swordStats]);
    
    Sword * sword2 = [[Sword alloc] initWeaponType:hammer inSlots:weapon1And2slot withStats:stats2 withAttackRange:NSMakeRange(20, 35) andMagicRange:NSMakeRange(0, 0)];
    NSLog(@"Stats: \n %@", [sword2 swordStats]);
    
    Sword * sword3 = [[Sword alloc] initWeaponType:shield inSlots:weapon2Slot withStats:stats3 withAttackRange:NSMakeRange(0, 0) andMagicRange:NSMakeRange(0, 0)];
    NSLog(@"Stats: \n %@", [sword3 swordStats]);
    
    [playerBag addItemToBag:sword1];
    [playerBag addItemToBag:sword2];
    [playerBag addItemToBag:sword3];
    self.combatTextBox.text = [playerBag displayBag];
    
    
}


@end
