//
//  Creatures.m
//  battleEngine
//
//  Created by Paul Park on 12/15/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Creatures.h"


@implementation Creatures

-(void)generateRandomMonster
{
    int randomMonsterClass = arc4random()%3+1;
    if (randomMonsterClass == 1) {
        [self generateWarrior];
    } else if (randomMonsterClass == 2) {
        [self generateMage];
    } else {
        [self generateRogue];
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
-(void)CompensateLevelTwo;
{
    self.healthPoints = self.healthPoints - (self.healthPoints*0.50);
    self.manaPoints = self.manaPoints - (self.manaPoints*0.50);
    self.attackPower = self.attackPower - (self.attackPower*0.50);
    self.defensePower = self.defensePower - (self.defensePower*0.50);
    self.magicPower = self.magicPower - (self.magicPower *0.50);
    self.magicDefense = self.magicDefense - (self.magicDefense*0.50);
}
-(void)CompensateLevelThree;
{
    self.healthPoints = self.healthPoints - (self.healthPoints*0.10);
    self.manaPoints = self.manaPoints - (self.manaPoints*0.10);
    self.attackPower = self.attackPower - (self.attackPower*0.10);
    self.defensePower = self.defensePower - (self.defensePower*0.10);
    self.magicPower = self.magicPower - (self.magicPower *0.10);
    self.magicDefense = self.magicDefense - (self.magicDefense*0.10);
}
-(void)CompensateLevelFour;
{
    self.healthPoints = self.healthPoints + (self.healthPoints*0.10);
    self.manaPoints = self.manaPoints + (self.manaPoints*0.10);
    self.attackPower = self.attackPower + (self.attackPower*0.10);
    self.defensePower = self.defensePower + (self.defensePower*0.10);
    self.magicPower = self.magicPower + (self.magicPower *0.10);
    self.magicDefense = self.magicDefense + (self.magicDefense*0.10);
}
-(void)CompensateLevelFive;
{
    self.healthPoints = self.healthPoints + (self.healthPoints*0.25);
    self.manaPoints = self.manaPoints + (self.manaPoints*0.25);
    self.attackPower = self.attackPower + (self.attackPower*0.25);
    self.defensePower = self.defensePower + (self.defensePower*0.25);
    self.magicPower = self.magicPower + (self.magicPower *0.25);
    self.magicDefense = self.magicDefense + (self.magicDefense*0.25);
}

@end
