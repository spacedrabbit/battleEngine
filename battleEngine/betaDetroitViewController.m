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
#import "Creatures.h"

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
@property (weak, nonatomic) IBOutlet UIButton *setButtonHidden;
@property (strong, nonatomic) IBOutlet UIButton *getCreature;

@property (strong, nonatomic) Creatures * monster;
@end

@implementation betaDetroitViewController

- (Creatures *)monster {
    if (!_monster){
        _monster = [[Creatures alloc]init];
    }
    return _monster;
}

- (Unit *)player {
    if (!_player){
        _player = [[Unit alloc] init];
    }
    return _player;
}

-(id)setButtonHidden {
    _warriorChoice.hidden=TRUE;
    _mageChoice.hidden=TRUE;
    _rogueChoice.hidden=TRUE;
    return 0;
    
}


- (IBAction)warriorChoice:(id)sender {
    [self.player generateWarrior];
    [self.monster generateRandomMonster];
    [self.player CompensateLevel:self.monster];
    [self.player listStats];
    [self.monster listStats];
    [_playerSlot1 setImage:[UIImage imageNamed:@"knight-03.png"]];
    [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];
    //[self disableClassButtons];
    [self setButtonHidden];
    
    }
- (IBAction)mageChoice:(id)sender {
    [self.player generateMage];
    [self.monster generateRandomMonster];
    [self.player CompensateLevel:self.monster];
    [self.player listStats];
    [self.monster listStats];
    [_playerSlot1 setImage:[UIImage imageNamed:@"wizard.png"]];
    [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];
    [self setButtonHidden];

}

- (IBAction)rogueChoice:(id)sender {
    [self.player generateRogue];
    [self.monster generateRandomMonster];
    [self.player CompensateLevel:self.monster];
    [self.player listStats];
    [self.monster listStats];
    [_playerSlot1 setImage:[UIImage imageNamed:@"rogue.png"]];
    [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];
    [self setButtonHidden];
}


- (IBAction)attackButton:(UIButton *)sender {
    [self.player encounterExperience:self.monster];
    [self.player attack:self.monster];
    [self.monster listStats];
    NSLog(@"Monster health points: %lu", self.monster.healthPoints);
    if (self.monster.healthPoints == 0) {
        [self.player levelUp];
        [_enemySlot1 setImage:nil];
        [_getCreature setHidden:FALSE];
    }
    
}
- (IBAction)getCreature:(id)sender {
    [self.player listStats];
    NSLog(@"EXP:%lu Level:%lu", self.player.experiencePoints, self.player.level);
    [self.monster generateRandomMonster];
    [self.player CompensateLevel:self.monster];
     [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];
    [sender setHidden:TRUE];
}

- (IBAction)healButton:(UIButton *)sender {
}
- (IBAction)inventoryButton:(UIButton *)sender {
    Potion * healthPot = [[Potion alloc] initPotionType:Health ofSize:Minor];
    Potion * manaPot = [[Potion alloc] initPotionType:Mana ofSize:Lesser];
    NSLog(@"Mana Pot: %@", manaPot.name);
    NSLog(@"Health Pot: %@", healthPot.name);
    self.combatTextBox.text = healthPot.name;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*Container * playerBag = [[Container alloc] initBagWith:1 withSlots:6];
    Sword * sword1 = [[Sword alloc] init];
    Sword * sword2 = [[Sword alloc] init];

    [playerBag addItemToBag:sword1];
    [playerBag addItemToBag:sword2];
    
    [playerBag removeItemFromBag:sword1];
    //NSLog(@"The Bag");
    self.combatTextBox.text = [playerBag displayBag];
    
    Unit * war = [[Unit alloc] initWarriorWithStats:@"WArrior"] ;
    //Unit * monster = [[Unit alloc] initRogueWithStats:@"Monster"];
    
    Potion * healthPot = [[Potion alloc] initPotionType:Health ofSize:Lesser];
    Potion * manaPot = [[Potion alloc] initPotionType:Mana ofSize:Titan];
    [playerBag addItemToBag:healthPot];

    NSLog(@"Current HP: %lu  MP:%lu", war.healthPoints, war.manaPoints);
    NSLog(@"Warrior takes 100 damage and uses 100 mp");
    war.healthPoints -= 100;
    war.manaPoints -= 100;
    NSLog(@"Current HP: %lu  MP:%lu", war.healthPoints, war.manaPoints);
    
    [healthPot useItemOn:war];
    [manaPot useItemOn:war];
    
    [playerBag removeItemFromBag:healthPot];
    
    
    NSLog(@"Current HP: %lu  MP:%lu", war.healthPoints, war.manaPoints);
    */
    
//view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
