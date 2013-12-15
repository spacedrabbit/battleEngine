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
    long minMana = 20;
    long maxMana = 40;
    long randomMana = (arc4random()%(maxMana-minMana))+minMana;
    
    long minHp = 190;
    long maxHp = 250;
    long randomHp = (arc4random()%(maxHp-minHp))+minHp;
    
    long minAtk = 25;
    long maxAtk = 35;
    long randomAtk = (arc4random()%(maxAtk-minAtk))+minAtk;
    
    long minDef = 45;
    long maxDef = 60;
    long randomDef = (arc4random()%(maxDef -minDef))+minDef;
    
    long minMagA = 10;
    long maxMagA = 25;
    long randomMagA = (arc4random()%(maxMagA - minMagA))+minMagA;
    
    long minMr = 15;
    long maxMr = 30;
    long randomMr = (arc4random()%(maxMr -minMr))+minMr;
    
    [f setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr];
    
    NSLog(@"%lu, %lu, %lu, %lu, %lu, %lu", f.healthPoints, f.manaPoints, f.attackPower, f.defensePower, f.magicDefense, f.magicPower);
    
    
}

@end
