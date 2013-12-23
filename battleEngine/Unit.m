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
            if (_warrior) {
                self.healthPoints = self.healthPoints + (arc4random()%(75-50))+50;
                self.maxHealthPoints = self.healthPoints;
                self.manaPoints = self.manaPoints + (arc4random()%(15-8))+8;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-3))+3;
                self.defensePower = self.defensePower +(arc4random()%(3-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(4-2))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(5-3))+3;
            } else if (_mage) {
                self.healthPoints = self.healthPoints + (arc4random()%(40-20))+20;
                self.manaPoints = self.manaPoints + (arc4random()%(50-30))+30;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(3-1))+1;
                self.defensePower = self.defensePower +(arc4random()%(2-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-3))+3;
                self.magicDefense = self.magicDefense +(arc4random()%(7-5))+5;
            }else{
                self.healthPoints = self.healthPoints + (arc4random()%(55-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(25-15))+15;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-4))+4;
                self.defensePower = self.defensePower +(arc4random()%(4-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-1))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(7-1))+1;
                
            }
            _level++;
        }
    } else if (_level == 1) {
        if (_experiencePoints >= 900) {
            if (_warrior) {
                self.healthPoints = self.healthPoints + (arc4random()%(75-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(15-8))+8;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-3))+3;
                self.defensePower = self.defensePower +(arc4random()%(3-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(4-2))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(5-3))+3;
            } else if (_mage) {
                self.healthPoints = self.healthPoints + (arc4random()%(40-20))+20;
                self.manaPoints = self.manaPoints + (arc4random()%(50-30))+30;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(3-1))+1;
                self.defensePower = self.defensePower +(arc4random()%(2-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-3))+3;
                self.magicDefense = self.magicDefense +(arc4random()%(7-5))+5;
            }else{
                self.healthPoints = self.healthPoints + (arc4random()%(55-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(25-15))+15;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-4))+4;
                self.defensePower = self.defensePower +(arc4random()%(4-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-1))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(7-1))+1;
            }
            _level++;
        }
    } else if (_level == 2) {
        if (_experiencePoints >= 1500) {
            if (_warrior) {
                self.healthPoints = self.healthPoints + (arc4random()%(75-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(15-8))+8;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-3))+3;
                self.defensePower = self.defensePower +(arc4random()%(3-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(4-2))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(5-3))+3;
            } else if (_mage) {
                self.healthPoints = self.healthPoints + (arc4random()%(40-20))+20;
                self.manaPoints = self.manaPoints + (arc4random()%(50-30))+30;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(3-1))+1;
                self.defensePower = self.defensePower +(arc4random()%(2-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-3))+3;
                self.magicDefense = self.magicDefense +(arc4random()%(7-5))+5;
            }else{
                self.healthPoints = self.healthPoints + (arc4random()%(55-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(25-15))+15;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-4))+4;
                self.defensePower = self.defensePower +(arc4random()%(4-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-1))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(7-1))+1;
            }
            _level++;
        }
    } else if (_level == 3) {
        if (_experiencePoints >= 2200) {
            if (_warrior) {
                self.healthPoints = self.healthPoints + (arc4random()%(75-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(15-8))+8;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-3))+3;
                self.defensePower = self.defensePower +(arc4random()%(3-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(4-2))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(5-3))+3;
            } else if (_mage) {
                self.healthPoints = self.healthPoints + (arc4random()%(40-20))+20;
                self.manaPoints = self.manaPoints + (arc4random()%(50-30))+30;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(3-1))+1;
                self.defensePower = self.defensePower +(arc4random()%(2-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-3))+3;
                self.magicDefense = self.magicDefense +(arc4random()%(7-5))+5;
            }else{
                self.healthPoints = self.healthPoints + (arc4random()%(55-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(25-15))+15;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-4))+4;
                self.defensePower = self.defensePower +(arc4random()%(4-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-1))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(7-1))+1;
            }
            _level++;
        }
    } else if (_level == 4) {
        if (_experiencePoints >= 3000) {
            if (_warrior) {
                self.healthPoints = self.healthPoints + (arc4random()%(75-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(15-8))+8;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-3))+3;
                self.defensePower = self.defensePower +(arc4random()%(3-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(4-2))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(5-3))+3;
            } else if (_mage) {
                self.healthPoints = self.healthPoints + (arc4random()%(40-20))+20;
                self.manaPoints = self.manaPoints + (arc4random()%(50-30))+30;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(3-1))+1;
                self.defensePower = self.defensePower +(arc4random()%(2-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-3))+3;
                self.magicDefense = self.magicDefense +(arc4random()%(7-5))+5;
            }else{
                self.healthPoints = self.healthPoints + (arc4random()%(55-50))+50;
                self.manaPoints = self.manaPoints + (arc4random()%(25-15))+15;
                self.maxHealthPoints = self.healthPoints;
                self.maxManaPoints = self.manaPoints;
                self.attackPower = self.attackPower +(arc4random()%(5-4))+4;
                self.defensePower = self.defensePower +(arc4random()%(4-1))+1;
                self.magicPower = self.magicPower + (arc4random()%(5-1))+1;
                self.magicDefense = self.magicDefense +(arc4random()%(7-1))+1;
            }
            _level++;
        }
        
    }
}

-(void)CompensateLevel:(Unit *)target
{
    if (self.level == 0) {
        target.healthPoints = target.healthPoints - (target.healthPoints*0.75);
        target.manaPoints = target.manaPoints - (target.manaPoints*0.75);
        target.attackPower = target.attackPower - (target.attackPower*0.75);
        target.defensePower = target.defensePower - (target.defensePower*0.75);
        target.magicPower = target.magicPower - (target.magicPower *0.75);
        target.magicDefense = target.magicDefense - (target.magicDefense*0.75);
    } else if ( self.level ==1) {
        
        target.healthPoints = target.healthPoints - (target.healthPoints*0.50);
        target.manaPoints = target.manaPoints - (target.manaPoints*0.50);
        target.attackPower = target.attackPower - (target.attackPower*0.50);
        target.defensePower = target.defensePower - (target.defensePower*0.50);
        target.magicPower = target.magicPower - (target.magicPower *0.50);
        target.magicDefense = target.magicDefense - (target.magicDefense*0.50);
    } else if (self.level == 2){
        target.healthPoints = target.healthPoints - (target.healthPoints*0.10);
        target.manaPoints = target.manaPoints - (target.manaPoints*0.10);
        target.attackPower = target.attackPower - (target.attackPower*0.10);
        target.defensePower = target.defensePower - (target.defensePower*0.50);
        target.magicPower = target.magicPower - (target.magicPower *0.10);
        target.magicDefense = target.magicDefense - (target.magicDefense*0.10);
        
        
    } else if (self.level == 3){
        target.healthPoints = target.healthPoints + (target.healthPoints*0.10);
        target.manaPoints = target.manaPoints + (target.manaPoints*0.10);
        target.attackPower = target.attackPower + (target.attackPower*0.10);
        target.defensePower = target.defensePower + (target.defensePower*0.50);
        target.magicPower = target.magicPower + (target.magicPower *0.10);
        target.magicDefense = target.magicDefense + (target.magicDefense*0.10);
        
    } else if (self.level == 4) {
        target.healthPoints = target.healthPoints + (target.healthPoints*0.20);
        target.manaPoints = target.manaPoints + (target.manaPoints*0.20);
        target.attackPower = target.attackPower + (target.attackPower*0.20);
        target.defensePower = target.defensePower + (target.defensePower*0.20);
        target.magicPower = target.magicPower + (target.magicPower *0.20);
        target.magicDefense = target.magicDefense + (target.magicDefense*0.20);
        
    } else if (self.level == 5) {
        target.healthPoints = target.healthPoints + (target.healthPoints*0.25);
        target.manaPoints = target.manaPoints + (target.manaPoints*0.25);
        target.attackPower = target.attackPower + (target.attackPower*0.25);
        target.defensePower = target.defensePower + (target.defensePower*0.25);
        target.magicPower = target.magicPower + (target.magicPower *0.25);
        target.magicDefense = target.magicDefense + (target.magicDefense*0.25);
    } else {
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

-(void)encounterExperience:(Unit *)f
{
    
    self.experiencePoints = self.experiencePoints +(f.healthPoints + f.manaPoints + f.attackPower + f.defensePower + f.magicDefense + f.magicPower)/2.25;
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
    
    [self setUnitStatsHealth:randomHp Mana:randomMana AttackPower:randomAtk Defense:randomDef MagicPwr:randomMagA MagicResist:randomMr EXP:0 Level:0];
    

}

@end
