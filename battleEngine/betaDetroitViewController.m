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
#import "SysAlerts.h"
#import "Encounter.h"

@interface betaDetroitViewController ()
@property (strong, nonatomic) Encounter * turn;
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
@property (strong, nonatomic) IBOutlet UILabel *playerHp;
@property (strong, nonatomic) IBOutlet UILabel *monsterHp;
@property (strong, nonatomic) Container * playerBag;

@property (strong, nonatomic) Creatures * monster;
@end

@implementation betaDetroitViewController

-(Container *) playerBag {
    if (_playerBag == nil) {
        _playerBag = [[Container alloc] initBagWith:1 withSlots:6];
    }
    return _playerBag;
}


-(UILabel *)monsterHp{
    if (!_monsterHp) {
        _monsterHp = [[UILabel alloc]init];
    }
    return _monsterHp;
}

-(UILabel *)playerHp {
    if(!_playerHp){
        _playerHp =[[UILabel alloc]init];
    }
    return _playerHp;
}

- (Encounter *)turn {
    if (!_turn) {
        _turn = [[Encounter alloc]init];
    }
    return _turn;
    }

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
    
    [self.turn beginEncounterBetween:self.player and:self.monster];
    
    [self.player CompensateLevel:self.monster];
    [self.player listStats];
    [self.monster listStats];
    [_playerSlot1 setImage:[UIImage imageNamed:@"knight-03.png"]];
    [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];
    [self.playerHp setText:[NSString stringWithFormat:@"%lu/%lu",self.player.healthPoints, self.player.maxHealthPoints]];
    [self.monsterHp setText:[NSString stringWithFormat:@"%lu/%lu",self.monster.healthPoints, self.monster.maxHealthPoints]];
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
    [self.playerHp setText:[NSString stringWithFormat:@"%lu/%lu",self.player.healthPoints, self.player.maxHealthPoints]];
    [self.monsterHp setText:[NSString stringWithFormat:@"%lu/%lu",self.monster.healthPoints, self.monster.maxHealthPoints]];
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
    [self.playerHp setText:[NSString stringWithFormat:@"%lu/%lu",self.player.healthPoints, self.player.maxHealthPoints]];
    [self.monsterHp setText:[NSString stringWithFormat:@"%lu/%lu",self.monster.healthPoints, self.monster.maxHealthPoints]];
    [self setButtonHidden];
}


- (IBAction)attackButton:(UIButton *)sender {
    
    [self.turn basicAttackOn];
    
    /*
    [self.player encounterExperience:self.monster];
    [self.player attack:self.monster];
    if (self.monster.healthPoints >0) {
         [self.monster attack:self.player];
    }
    [self.monster listStats];
    [self.monsterHp setText:[NSString stringWithFormat:@"%lu/%lu",self.monster.healthPoints, self.monster.maxHealthPoints]];
    [self.playerHp setText:[NSString stringWithFormat:@"%lu/%lu",self.player.healthPoints, self.player.maxHealthPoints]];
    NSLog(@"Monster health points: %lu/%lu", self.monster.healthPoints,self.monster.maxHealthPoints);
    NSLog(@"Player health points: %lu/%lu", self.player.healthPoints, self.player.maxHealthPoints);
    if (self.monster.healthPoints == 0) {
        [self.player levelUp];
        [self.monsterHp setText:@""];
        [_enemySlot1 setImage:nil];
        [_getCreature setHidden:FALSE];
    }
   */
}

- (IBAction)getCreature:(id)sender {
    [self.player listStats];
    NSLog(@"EXP:%lu Level:%lu", self.player.experiencePoints, self.player.level);
    [self.monster generateRandomMonster];
    [self.player CompensateLevel:self.monster];
    [self.monster listStats];
    [self.monsterHp setText:[NSString stringWithFormat:@"%lu/%lu",self.monster.healthPoints, self.monster.maxHealthPoints]];
    [_enemySlot1 setImage:[UIImage imageNamed:@"waterSprite.png"]];
    [sender setHidden:TRUE];
}

- (IBAction)healButton:(UIButton *)sender {
}

- (IBAction)inventoryButton:(UIButton *)sender {
    /*
    Potion * healthPot = [[Potion alloc] initPotionType:Health ofSize:Minor];
    Potion * manaPot = [[Potion alloc] initPotionType:Mana ofSize:Lesser];
    NSLog(@"Mana Pot: %@", manaPot.name);
    NSLog(@"Health Pot: %@", healthPot.name);
    self.combatTextBox.text = [NSString stringWithFormat:@"%@\n %@", healthPot.name, manaPot.name];*/
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

/**********************************************************
 
 
 
 View Controller Change Methods
 
 
 
 **********************************************************/

- (void)inventoryViewControllerDidFinish:(inventoryViewController *)controller{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"toInventory"]) {
        [[segue destinationViewController] setDelegate:self];
        [[segue destinationViewController] currentBag:self.playerBag];
    }
}

/**********************************************************
 
      
 
                Inventory Test Methods - Louis
 
 
 
 **********************************************************/

-(void)testPotions{
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
    //Container * playerBag = [[Container alloc] initBagWith:1 withSlots:6];
    
    Sword * sword1 = [[Sword alloc] initWeaponType:sword inSlots:weapon1Slot withStats:stats withAttackRange:NSMakeRange(25, 10) andMagicRange:NSMakeRange(0, 0)];
    //NSLog(@"Stats: \n %@", [sword1 swordStats]);
    
    Sword * sword2 = [[Sword alloc] initWeaponType:hammer inSlots:weapon1And2slot withStats:stats2 withAttackRange:NSMakeRange(20, 35) andMagicRange:NSMakeRange(0, 0)];
    //NSLog(@"Stats: \n %@", [sword2 swordStats]);
    
    Sword * sword3 = [[Sword alloc] initWeaponType:shield inSlots:weapon2Slot withStats:stats3 withAttackRange:NSMakeRange(0, 0) andMagicRange:NSMakeRange(0, 0)];
    //NSLog(@"Stats: \n %@", [sword3 swordStats]);
    
    [self.playerBag addItemToBag:sword1];
    [self.playerBag addItemToBag:sword2];
    [self.playerBag addItemToBag:sword3];
    //self.combatTextBox.text = [playerBag displayBag];
    NSLog(@"\n%@", [self.playerBag displayBag]);
    
    
}





@end
