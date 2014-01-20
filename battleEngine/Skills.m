//
//  Skills.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Skills.h"

@implementation Skills



-(void)magicMissle:(Unit *)f
{
    // generate random decimal between .25 to .35
    double spellDamageMultiplierNumerator = arc4random_uniform(10) + 115;
    double spellDamageMultiplier = spellDamageMultiplierNumerator / 100;
    NSLog(@"spellDamageMultiplierNumerator %f, spellDamageMultiplier %f", spellDamageMultiplierNumerator, spellDamageMultiplier); //test
    
    if (f.magicDefense >= self.magicPower) {
        
        // if true spell only does 1 * level damage
        f.healthPoints = f.healthPoints - 1 * self.level;
        NSLog(@"Magic defense too great! You only deal %u damage", 2 * self.level);
        self.manaPoints = self.manaPoints - 10;
        NSLog(@"You have %lu mana left", self.manaPoints);
    } else {
        NSLog(@"Magic Missle does %f damage",(self.magicPower * spellDamageMultiplier + 2 * self.level) - f.magicDefense);
        f.healthPoints = (f.healthPoints + f.magicDefense) - (self.magicPower * spellDamageMultiplier + 2 * self.level);
        NSLog(@"Monster has %lu health left", f.healthPoints);
        self.manaPoints = self.manaPoints - 10;
        NSLog(@"You have %lu mana left", self.manaPoints);
    }
}

-(void)fireball:(Unit *)f
{
    // generate random number between 1.40 to 1.50
    double spellDamageMultiplierNumerator = arc4random_uniform(10) + 140;
    double spellDamageMultiplier = spellDamageMultiplierNumerator / 100;
    NSLog(@"spellDamageMultiplierNumerator %f, spellDamageMultiplier %f", spellDamageMultiplierNumerator, spellDamageMultiplier); //test
    
    long fizzleChance = arc4random()% 99 + 1;
    
    if (f.magicDefense >= self.magicPower) {
        
        // if true spell only does 5 * level damage
        f.healthPoints = f.healthPoints - 5 * self.level;
        NSLog(@"Magic defense too great! You only deal %u damage", 5 * self.level);
        self.manaPoints = self.manaPoints - 20;
        NSLog(@"You have %lu mana left", self.manaPoints);
        
        // 15% chance spell doesn't work
    } else if (fizzleChance < 15) {
        NSLog(@"Your fireball fizzled, be glad it didn't explode in your face");
        self.manaPoints = self.manaPoints - 20;
        NSLog(@"You have %lu mana left", self.manaPoints);
    } else {
        NSLog(@"Fireball does %f damage",(self.magicPower * spellDamageMultiplier + 5 * self.level) - f.magicDefense);
        f.healthPoints = (f.healthPoints + f.magicDefense) - (self.magicPower * spellDamageMultiplier + 5 * self.level);
        NSLog(@"Monster has %lu health left", f.healthPoints);
        self.manaPoints = self.manaPoints - 20;
        NSLog(@"You have %lu mana left", self.manaPoints);
    }
}

-(void)disarm:(Unit *)f
{
    // generate random number between .20 to .30
    double skillMultiplierNumerator = arc4random_uniform(10) + 20;
    double skillMultiplier = skillMultiplierNumerator / 100;
    NSLog(@"skillMultiplierNumerator %f, skillMultiplier %f", skillMultiplierNumerator, skillMultiplier); //test
    
    long hitRate = arc4random()%100+1;
    
    // missChance varies depending on attackPower vs. defensePower
    long missChance;
    if (self.attackPower < f.defensePower) {
        missChance = f.defensePower;
    } else {
        missChance = 15;
    }
    
    NSLog(@"miss chance %ld", missChance); //test
    NSLog(@"hit rate %ld", hitRate); //test
    
    if (hitRate > missChance) {
        f.attackPower = f.attackPower - (self.attackPower * skillMultiplier);
        f.healthPoints = f.healthPoints - (self.attackPower * skillMultiplier * 2);
        NSLog(@"You disarm your opponent dealing %f damage and reducing their attack power by %f", (self.attackPower * skillMultiplier * 2), (self.attackPower * skillMultiplier));
    } else {
        NSLog(@"You fail to disarm your opponent!");
    }
}


-(void)bullRush:(Unit *)f
{
    // generate random number between .20 to .30
    double skillMultiplierNumerator = arc4random_uniform(10) + 20;
    double skillMultiplier = skillMultiplierNumerator / 100;
    
    long hitRate = arc4random()%100+1;
    
    // missChance varies depending on attackPower vs. defensePower
    long missChance;
    if (self.attackPower <= f.defensePower) {
        missChance = f.defensePower;
    } else {
        missChance = 15;
    }
    
    if (hitRate > missChance) {
        f.defensePower = f.defensePower - (self.attackPower * skillMultiplier);
        f.healthPoints = f.healthPoints - (self.attackPower * skillMultiplier * 2);
        NSLog(@"You bull rush your opponent dealing %f damage and reducing their defense power by %f", (self.attackPower * skillMultiplier * 2), (self.attackPower * skillMultiplier));
    } else {
        NSLog(@"Your bull rush misses");
    }
}

-(void)dirtyTrick:(Unit *)f
{
    long hitRate = arc4random()%100+1;
    
    long missChance;
    if (self.attackPower <= f.defensePower) {
        missChance = f.defensePower;
    } else {
        missChance = 15;
    }
    
    if (hitRate > missChance) {
        f.magicPower = f.magicPower - 5 * self.level;
        f.attackPower = f.attackPower - 5 * self.level;
        f.defensePower = f.defensePower - 5 * self.level;
        f.healthPoints = f.healthPoints -  5 * self.level;
        NSLog(@"SHASHASHAA!!! POCKET SAND! You reduce your opponents magic power, attack power, and defense by %u", (5 * self.level));
    } else {
        NSLog(@"Your gerbil screwed you, there is no pocket sand");
    }
}

-(void)backstab:(Unit *)f
{
    long hitRate = arc4random()%100+1;
    
    long missChance;
    if (self.attackPower < f.defensePower) {
        missChance = f.defensePower;
    } else {
        missChance = 25;
    }
    
    if (hitRate > missChance) {
        long critMultiplier = arc4random()%5 + 1 + self.level;
        NSLog(@"critMultiplier %ld", critMultiplier); //test
        f.healthPoints = f.healthPoints - (self.attackPower/2) * critMultiplier;
        NSLog(@"You backstab your opponent dealing %lu damage",(self.attackPower/2) * critMultiplier);
    } else {
        NSLog(@"You attempted to backstab your opponent but missed");
    }
}
@end
