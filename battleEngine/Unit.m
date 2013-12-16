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
-(void)listStats
{
    NSLog(@"Stats: \n HP: %lu, \n MP: %lu, \n AttackPower:%lu, \n Defense: %lu, \n MagicPower: %lu, \n MagicDefense:%lu", self.healthPoints, self.manaPoints, self.attackPower, self.defensePower, self.magicPower, self.magicDefense);
}

-(void)levelUp
{
    if(_experiencePoints == 400 | _experiencePoints == 700 |_experiencePoints == 1200 | _experiencePoints == 1700 | _experiencePoints == 2300){
        if (_warrior) {
            self.healthPoints = self.healthPoints + (arc4random()%(75-50))+50;
            self.manaPoints = self.manaPoints + (arc4random()%(15-8))+8;
            self.attackPower = self.attackPower +(arc4random()%(5-3))+3;
            self.defensePower = self.defensePower +(arc4random()%(3-1))+1;
            self.magicPower = self.magicPower + (arc4random()%(4-2))+1;
            self.magicDefense = self.magicDefense +(arc4random()%(5-3))+3;
        } else if (_mage) {
            self.healthPoints = self.healthPoints + (arc4random()%(40-20))+20;
            self.manaPoints = self.manaPoints + (arc4random()%(50-30))+30;
            self.attackPower = self.attackPower +(arc4random()%(3-1))+1;
            self.defensePower = self.defensePower +(arc4random()%(2-1))+1;
            self.magicPower = self.magicPower + (arc4random()%(5-3))+3;
            self.magicDefense = self.magicDefense +(arc4random()%(7-5))+5;
            
        }else{
            self.healthPoints = self.healthPoints + (arc4random()%(55-50))+50;
            self.manaPoints = self.manaPoints + (arc4random()%(25-15))+15;
            self.attackPower = self.attackPower +(arc4random()%(5-4))+4;
            self.defensePower = self.defensePower +(arc4random()%(4-1))+1;
            self.magicPower = self.magicPower + (arc4random()%(5-1))+1;
            self.magicDefense = self.magicDefense +(arc4random()%(7-1))+1;
            
        }
        _level++;
    }
}

- (id)initWarriorWithStats:(NSString*)name; {
    self = [super init];
    if(self) {
        name = [name copy];
        
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
        
        [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr];

    }
    return self;
}

- (id)initMageWithStats:(NSString*)name
{
    self = [super init];
    if(self) {
        name = [name copy];
        long minMana = 80;
        long maxMana = 100;
        long randomMana = (arc4random()%(maxMana-minMana))+minMana;
        
        long minHp = 100;
        long maxHp = 140;
        long randomHp = (arc4random()%(maxHp-minHp))+minHp;
        
        long minAtk = 10;
        long maxAtk = 20;
        long randomAtk = (arc4random()%(maxAtk-minAtk))+minAtk;
        
        long minDef = 15;
        long maxDef = 25;
        long randomDef = (arc4random()%(maxDef -minDef))+minDef;
        
        long minMagA = 45;
        long maxMagA = 60;
        long randomMagA = (arc4random()%(maxMagA - minMagA))+minMagA;
        
        long minMr = 40;
        long maxMr = 50;
        long randomMr = (arc4random()%(maxMr -minMr))+minMr;
        
        [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr];
    }
    return self;
}

- (id)initRogueWithStats:(NSString*)name
{
    self = [super init];
    if(self) {
        name = [name copy];
        long minMana = 80;
        long maxMana = 100;
        long randomMana = (arc4random()%(maxMana-minMana))+minMana;
        
        long minHp = 130;
        long maxHp = 165;
        long randomHp = (arc4random()%(maxHp-minHp))+minHp;
        
        long minAtk = 35;
        long maxAtk = 40;
        long randomAtk = (arc4random()%(maxAtk-minAtk))+minAtk;
        
        long minDef = 25;
        long maxDef = 45;
        long randomDef = (arc4random()%(maxDef -minDef))+minDef;
        
        long minMagA = 30;
        long maxMagA = 40;
        long randomMagA = (arc4random()%(maxMagA - minMagA))+minMagA;
        
        long minMr = 25;
        long maxMr = 40;
        long randomMr = (arc4random()%(maxMr -minMr))+minMr;
        
        [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr];

        
    }
    return self;
}

-(void)generateWarrior;

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
    
    [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr];
    
    
}


-(void)generateMage;
{
    long minMana = 80;
    long maxMana = 100;
    long randomMana = (arc4random()%(maxMana-minMana))+minMana;
    
    long minHp = 100;
    long maxHp = 140;
    long randomHp = (arc4random()%(maxHp-minHp))+minHp;
    
    long minAtk = 10;
    long maxAtk = 20;
    long randomAtk = (arc4random()%(maxAtk-minAtk))+minAtk;
    
    long minDef = 15;
    long maxDef = 25;
    long randomDef = (arc4random()%(maxDef -minDef))+minDef;
    
    long minMagA = 45;
    long maxMagA = 60;
    long randomMagA = (arc4random()%(maxMagA - minMagA))+minMagA;
    
    long minMr = 40;
    long maxMr = 50;
    long randomMr = (arc4random()%(maxMr -minMr))+minMr;
    
    [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr];

    
}

-(void)generateRogue;
{
    long minMana = 80;
    long maxMana = 100;
    long randomMana = (arc4random()%(maxMana-minMana))+minMana;
    
    long minHp = 130;
    long maxHp = 165;
    long randomHp = (arc4random()%(maxHp-minHp))+minHp;
    
    long minAtk = 35;
    long maxAtk = 40;
    long randomAtk = (arc4random()%(maxAtk-minAtk))+minAtk;
    
    long minDef = 25;
    long maxDef = 45;
    long randomDef = (arc4random()%(maxDef -minDef))+minDef;
    
    long minMagA = 30;
    long maxMagA = 40;
    long randomMagA = (arc4random()%(maxMagA - minMagA))+minMagA;
    
    long minMr = 25;
    long maxMr = 40;
    long randomMr = (arc4random()%(maxMr -minMr))+minMr;
    
    [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr];
    

}

@end
