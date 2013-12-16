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
    //int healthMultiplier = .15; // multiplier to scale damage

    f.healthPoints = (f.healthPoints + f.magicDefense) - (f.healthPoints * 0.15);
    self.manaPoints = self.manaPoints - 10;
    NSLog(@"Magic Missle does %lu damage",(15 + self.magicPower) - (2 * self.level));
}

-(void)fireball:(Unit *)f
{
    int critMultiplier = arc4random()%5; // 20% fizzle chance
    if (critMultiplier > 0) {
        f.healthPoints = (f.healthPoints  + f.magicDefense) - (self.magicPower + 10 * critMultiplier * self.level);
        self.manaPoints = self.manaPoints - 20;
        NSLog(@"Fireball does %lu damage", (self.magicPower + 10 * critMultiplier));
    } else {
        NSLog(@"Your fireball fizzled");
    }
    
}

-(void)disarm:(Unit *)f
{
    int missChance = arc4random()%100+1;
    if (missChance > 25) {
        f.attackPower = f.attackPower - (self.attackPower / 5 + self.level);
        f.healthPoints = f.healthPoints - (self.attackPower / 2);
        NSLog(@"You disarm your opponent dealing %lu damage and reducing their attack power by %lu", (self.attackPower / 2), (self.attackPower / 5 + self.level));
    } else {
        NSLog(@"You fail to disarm your opponent!");
    }
}

-(void)bullRush:(Unit *)f
{
    int missChance = arc4random()%100+1;
    if (missChance > 25) {
        f.defensePower = f.defensePower - (self.attackPower / 5 + self.level);
        f.healthPoints = f.healthPoints - (self.attackPower / 2);
        NSLog(@"You bull rush your opponent dealing %lu damage and reducing their defense power by %lu", (self.attackPower / 2), (self.attackPower / 5 + self.level));
    } else {
        NSLog(@"Your bull rush misses");
    }
}

-(void)dirtyTrick:(Unit *)f
{
    int missChance = arc4random()%100+1;
    if (missChance > 25) {
        f.magicPower = f.magicPower - 5 * self.level;
        f.attackPower = f.attackPower - 5 * self.level;
        f.defensePower = f.defensePower - 5 * self.level;
        f.healthPoints = f.healthPoints -  5 * self.level;
        NSLog(@"SHASHASHAA!!! POCKET SAND! You reduce your opponents magic power, attack power, and defense by %lu", (5 * self.level));
    } else {
        NSLog(@"Your gerbil screwed you, there is no pocket sand");
    }
}

-(void)backstab:(Unit *)f
{
    int missChance = arc4random()%100+1;
    if (missChance > 20) {
        int critMultiplier = arc4random()%5 + self.level;
        f.healthPoints = f.healthPoints - (self.attackPower/2) * critMultiplier;
        NSLog(@"You backstab your opponent dealing %lu damage",(self.attackPower/2) * critMultiplier);
    } else {
        NSLog(@"You attempted to backstab your opponent but missed");
    }
}
@end
