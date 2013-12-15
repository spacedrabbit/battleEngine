//
//  MonstersNPC.m
//  battleEngine
//
//  Created by Paul Park on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "MonstersNPC.h"


@implementation MonstersNPC

-(void) generateRandomMonster
{
    int randomMonsterClass = arc4random()%3+1;
    if (randomMonsterClass == 1) {
        [self generateWarrior:self];
    } else if (randomMonsterClass == 2) {
        [self generateMage:self];
    } else {
        [self generateRogue:self];
    }
    
}

-(void)encounterExperience:(Unit *)f
{

    self.experiencePoints = self.experiencePoints +(f.healthPoints + f.manaPoints + f.attackPower + f.defensePower + f.magicDefense + f.magicPower)/2.25;
}

-(void)CompensateLevelOne
{
    self.healthPoints = self.healthPoints - (self.healthPoints*0.75);
    self.manaPoints = self.manaPoints - (self.manaPoints*0.75);
    self.attackPower = self.attackPower - (self.attackPower*0.75);
    self.defensePower = self.defensePower - (self.defensePower*0.75);
    self.magicPower = self.magicPower - (self.magicPower *0.75);
    self.magicDefense = self.magicDefense - (self.magicDefense*0.75);
}


@end
