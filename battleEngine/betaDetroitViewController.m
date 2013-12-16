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

@end

@implementation betaDetroitViewController



- (IBAction)warriorChoice:(id)sender {
    Unit *player = [[Unit alloc]init];
    [player generateWarrior];
    NSLog(@"HP: %lu, MP: %lu, Atk: %lu, Def: %lu, MagicAtk: %lu, MagicDef:%lu", player.healthPoints, player.manaPoints,player.attackPower, player.defensePower, player.magicPower, player.magicDefense);
    [sender setHidden:YES];
    }
- (IBAction)mageChoice:(id)sender {
}
- (IBAction)rogueChoice:(id)sender {
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
    Unit *player = [[Unit alloc]init];
    [player generateMage];
    [player generateWarrior];
    [player generateRogue];

    Creatures *monster = [[Creatures alloc]init];
    [monster generateRandomMonster];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
