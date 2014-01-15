//
//  Unit.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Unit.h"

@implementation Unit

-(void) setUnitStatsHealth:(long)Hp Mana:(long)Mp AttackPower:(long)Atk Defense:(long)Def MagicPwr:(long)magicP MagicResist:(long)MagicDef EXP:(NSUInteger)Exp Level:(NSUInteger)lvl
{
    _maxHealthPoints = Hp;
    _maxManaPoints = Mp;
    
    _healthPoints = Hp;
    _manaPoints = Mp;
    _attackPower = Atk;
    _defensePower = Def;
    _magicPower = magicP;
    _magicDefense = MagicDef;
    _experiencePoints = Exp;
    _level = lvl;
    
}
-(void)listStats
{
    NSLog(@"Stats: \n Level: %lu \n HP: %lu, \n MP: %lu, \n AttackPower:%lu, \n Defense: %lu, \n MagicPower: %lu, \n MagicDefense:%lu \n Exp: %lu", self.level, self.healthPoints, self.manaPoints, self.attackPower, self.defensePower, self.magicPower, self.magicDefense, self.experiencePoints);
}

-(void)levelUp
{
    if(_level == 0){
        if(_experiencePoints >= 400)
        {
            long lowEnd = 10;
            long highEnd = 15;
            double perGrowth = (arc4random()%(highEnd-lowEnd))+lowEnd;
           
            self.maxHealthPoints = self.maxHealthPoints + (self.maxHealthPoints * (perGrowth/100));
            self.healthPoints = self.maxHealthPoints;
            self.maxManaPoints = self.maxManaPoints + (self.maxManaPoints *(perGrowth/100));
            self.manaPoints = self.maxManaPoints;
            self.attackPower = self.attackPower +(self.attackPower*(perGrowth/100));
            self.defensePower = self.defensePower +(self.defensePower*(perGrowth/100));
            self.magicPower = self.magicPower + (self.magicPower *(perGrowth/100));
            self.magicDefense = self.magicDefense +(self.magicDefense*(perGrowth/100));
            
            _level++;
        }
    } else if (_level == 1) {
        if (_experiencePoints >= 1900) {
            long lowEnd = 11;
            long highEnd = 15;
            double perGrowth = (arc4random()%(highEnd-lowEnd))+lowEnd;
            
            self.maxHealthPoints = self.maxHealthPoints + (self.maxHealthPoints * (perGrowth/100));
            self.healthPoints = self.maxHealthPoints;
            self.maxManaPoints = self.maxManaPoints + (self.maxManaPoints *(perGrowth/100));
            self.manaPoints = self.maxManaPoints;
            self.attackPower = self.attackPower +(self.attackPower*(perGrowth/100));
            self.defensePower = self.defensePower +(self.defensePower*(perGrowth/100));
            self.magicPower = self.magicPower + (self.magicPower *(perGrowth/100));
            self.magicDefense = self.magicDefense +(self.magicDefense*(perGrowth/100));
         _level++;
        }
    } else if (_level == 2) {
        if (_experiencePoints >= 3500) {
            long lowEnd = 15;
            long highEnd = 18;
            double perGrowth = (arc4random()%(highEnd-lowEnd))+lowEnd;
            
            self.maxHealthPoints = self.maxHealthPoints + (self.maxHealthPoints * (perGrowth/100));
            self.healthPoints = self.maxHealthPoints;
            self.maxManaPoints = self.maxManaPoints + (self.maxManaPoints *(perGrowth/100));
            self.manaPoints = self.maxManaPoints;
            self.attackPower = self.attackPower +(self.attackPower*(perGrowth/100));
            self.defensePower = self.defensePower +(self.defensePower*(perGrowth/100));
            self.magicPower = self.magicPower + (self.magicPower *(perGrowth/100));
            self.magicDefense = self.magicDefense +(self.magicDefense*(perGrowth/100));
              _level++;
        }
    } else if (_level == 3) {
        if (_experiencePoints >= 6200) {
            long lowEnd = 12;
            long highEnd = 16;
            double perGrowth = (arc4random()%(highEnd-lowEnd))+lowEnd;
            
            self.maxHealthPoints = self.maxHealthPoints + (self.maxHealthPoints * (perGrowth/100));
            self.healthPoints = self.maxHealthPoints;
            self.maxManaPoints = self.maxManaPoints + (self.maxManaPoints *(perGrowth/100));
            self.manaPoints = self.maxManaPoints;
            self.attackPower = self.attackPower +(self.attackPower*(perGrowth/100));
            self.defensePower = self.defensePower +(self.defensePower*(perGrowth/100));
            self.magicPower = self.magicPower + (self.magicPower *(perGrowth/100));
            self.magicDefense = self.magicDefense +(self.magicDefense*(perGrowth/100));
        _level++;
        }
        
    } else if (_level == 4) {
        if (_experiencePoints >= 13000) {
            long lowEnd = 15;
            long highEnd = 18;
            double perGrowth = (arc4random()%(highEnd-lowEnd))+lowEnd;
            
            self.maxHealthPoints = self.maxHealthPoints + (self.maxHealthPoints * (perGrowth/100));
            self.healthPoints = self.maxHealthPoints;
            self.maxManaPoints = self.maxManaPoints + (self.maxManaPoints *(perGrowth/100));
            self.manaPoints = self.maxManaPoints;
            self.attackPower = self.attackPower +(self.attackPower*(perGrowth/100));
            self.defensePower = self.defensePower +(self.defensePower*(perGrowth/100));
            self.magicPower = self.magicPower + (self.magicPower *(perGrowth/100));
            self.magicDefense = self.magicDefense +(self.magicDefense*(perGrowth/100));
           _level++;
        }
    }
    
}


-(void)CompensateLevel:(Unit *)target
{
    if (self.level == 0) {
        target.maxHealthPoints = target.maxHealthPoints -(target.maxHealthPoints*0.75);
        target.healthPoints = target.healthPoints - (target.healthPoints*0.75);
        target.manaPoints = target.manaPoints - (target.manaPoints*0.75);
        target.attackPower = target.attackPower - (target.attackPower*0.75);
        target.defensePower = target.defensePower - (target.defensePower*0.75);
        target.magicPower = target.magicPower - (target.magicPower *0.75);
        target.magicDefense = target.magicDefense - (target.magicDefense*0.75);
    } else if ( self.level ==1) {
        target.maxHealthPoints = target.maxHealthPoints -(target.maxHealthPoints*0.50);
        target.healthPoints = target.healthPoints - (target.healthPoints*0.50);
        target.manaPoints = target.manaPoints - (target.manaPoints*0.50);
        target.attackPower = target.attackPower - (target.attackPower*0.50);
        target.defensePower = target.defensePower - (target.defensePower*0.50);
        target.magicPower = target.magicPower - (target.magicPower *0.50);
        target.magicDefense = target.magicDefense - (target.magicDefense*0.50);
    } else if (self.level == 2){
        target.maxHealthPoints = target.maxHealthPoints -(target.maxHealthPoints*0.25);
        target.healthPoints = target.healthPoints - (target.healthPoints*0.25);
        target.manaPoints = target.manaPoints - (target.manaPoints*0.20);
        target.attackPower = target.attackPower - (target.attackPower*0.20);
        target.defensePower = target.defensePower - (target.defensePower*0.35);
        target.magicPower = target.magicPower - (target.magicPower *0.25);
        target.magicDefense = target.magicDefense - (target.magicDefense*0.35);
        
        
    } else if (self.level == 3){
        target.maxHealthPoints = target.maxHealthPoints +(target.maxHealthPoints*0.10);
        target.healthPoints = target.healthPoints + (target.healthPoints*0.10);
        target.manaPoints = target.manaPoints + (target.manaPoints*0.10);
        target.attackPower = target.attackPower + (target.attackPower*0.10);
        target.defensePower = target.defensePower + (target.defensePower*0.10);
        target.magicPower = target.magicPower + (target.magicPower *0.10);
        target.magicDefense = target.magicDefense + (target.magicDefense*0.10);
        
    } else if (self.level == 4) {
        target.maxHealthPoints = target.maxHealthPoints +(target.maxHealthPoints*0.20);
        target.healthPoints = target.healthPoints + (target.healthPoints*0.20);
        target.manaPoints = target.manaPoints + (target.manaPoints*0.20);
        target.attackPower = target.attackPower + (target.attackPower*0.20);
        target.defensePower = target.defensePower + (target.defensePower*0.20);
        target.magicPower = target.magicPower + (target.magicPower *0.20);
        target.magicDefense = target.magicDefense + (target.magicDefense*0.20);
        
    } else if (self.level == 5) {
        target.maxHealthPoints = target.maxHealthPoints +(target.maxHealthPoints*0.25);
        target.healthPoints = target.healthPoints + (target.healthPoints*0.25);
        target.manaPoints = target.manaPoints + (target.manaPoints*0.25);
        target.attackPower = target.attackPower + (target.attackPower*0.25);
        target.defensePower = target.defensePower + (target.defensePower*0.25);
        target.magicPower = target.magicPower + (target.magicPower *0.25);
        target.magicDefense = target.magicDefense + (target.magicDefense*0.25);
    } else {
        target.maxHealthPoints = target.maxHealthPoints*(self.level-4);
        target.healthPoints = target.healthPoints *(self.level -4);
        target.manaPoints = target.manaPoints *(self.level -4);
        target.attackPower = target.attackPower *(self.level -4);
        target.defensePower = target.defensePower *(self.level -4);
        target.magicPower = target.magicPower *(self.level-4);
        target.magicDefense = target.magicDefense *(self.level-4);
    }
}


-(void)attack:(Unit *) target {
    
    if ((target.healthPoints+target.defensePower) -self.attackPower < 0) {
        target.healthPoints = 0;
    } else if (target.defensePower >= self.attackPower) {
        target.healthPoints = target.healthPoints - 1;
    }else{
        target.healthPoints = target.healthPoints+target.defensePower -self.attackPower;
    }
}

-(void)encounterExperience:(Unit *)f
{
    
    self.experiencePoints = self.experiencePoints +(f.healthPoints + f.manaPoints + f.attackPower + f.defensePower + f.magicDefense + f.magicPower)/2.25;
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
        
        [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr EXP:0 Level:0];

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
        
        [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr EXP:0 Level:0];
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
        
        [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr EXP:0 Level:0];

        
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
    
    [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr EXP:0 Level:0];
    
    
}


-(void)generateMage;
{
    long minMana = 110;
    long maxMana = 140;
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
    long maxMr = 55;
    long randomMr = (arc4random()%(maxMr -minMr))+minMr;
    
    [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr EXP:0 Level:0];

    
}

-(void)generateRogue;
{
    long minMana = 60;
    long maxMana = 80;
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
    
    [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr EXP:0 Level:0];
    

}

@end
