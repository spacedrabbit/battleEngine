//
//  Unit.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Unit.h"

@implementation Unit

-(void) setUnitStatsHealth:(NSUInteger)Hp Mana:(NSUInteger)Mp AttackPower:(NSUInteger)Atk Defense:(NSUInteger)Def MagicPwr:(NSUInteger)magicP MagicResist:(NSUInteger)MagicDef
{
    _healthPoints = Hp;
    _manaPoints = Mp;
    _attackPower = Atk;
    _defensePower = Def;
    _magicPower = magicP;
    _magicDefense = MagicDef;
}

-(void)levelUp
{
    if (_warrior) {
        self.healthPoints = self.healthPoints + (arc4random()%(75-50))+50;
        self.manaPoints = self.manaPoints + (arc4random()%(15-8))+8;
        self.attackPower = self.attackPower +(arc4random()%(5-3))+3;
        self.defensePower = self.defensePower +(arc4random()%(3-1))+1;
        self.magicPower = self.magicPower + (arc4random()%(4-2))+1;
    }
    _level++;
}

-(void)makeWarrior:(Unit *)f
{
    int minMana = 20;
    int maxMana = 40;
    int randomMana = (arc4random()%(maxMana-minMana))+minMana;
    
    int minHp = 190;
    int maxHp = 250;
    int randomHp = (arc4random()%(maxHp-minHp))+minHp;
    
    int minAtk = 25;
    int maxAtk = 35;
    int randomAtk = (arc4random()%(maxAtk-minAtk))+minAtk;
    
    int minDef = 45;
    int maxDef = 60;
    int randomDef = (arc4random()%(maxDef -minDef))+minDef;
    
    int minMagA = 10;
    int maxMagA = 25;
    int randomMagA = (arc4random()%(maxMagA - minMagA))+minMagA;
    
    int minMr = 15;
    int maxMr = 30;
    int randomMr = (arc4random()%(maxMr -minMr))+minMr;
    
    [f setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr];
    
    NSLog(@"%lu, %lu, %lu, %lu, %lu, %lu", f.healthPoints, f.manaPoints, f.attackPower, f.defensePower, f.magicDefense, f.magicPower);
    
    
}

@end
