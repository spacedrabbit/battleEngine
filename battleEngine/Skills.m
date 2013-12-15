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
    f.healthPoints = (f.healthPoints + f.magicDefense) - (15 + self.magicPower) - (2 * self.level);
    self.manaPoints = self.manaPoints - 10;
    NSLog(@"Magic Missle does %u damage",(15 + self.magicPower) - (2 * self.level));
}

-(void)fireball:(Unit *)f
{
    int critMultiplier = arc4random()%5;
    f.healthPoints = (f.healthPoints  + f.magicDefense) - (self.magicPower + 10 * critMultiplier);
    self.manaPoints = self.manaPoints - 20;
    
    if (critMultiplier > 0) {
        NSLog(@"Fireball does %u damage", (self.magicPower + 10 * critMultiplier));
    } else {
        NSLog(@"Your fireball fizzled");
    }
    
}

-(void)disarm:(Unit *)f
{
    f.attackPower = f.attackPower - (self.attackPower / 5);
    f.healthPoints = f.healthPoints - (self.attackPower / 10);
    NSLog(@"You disarm your opponent dealing %u damage and reducing their attack power by %u", (self.attackPower / 10), (self.attackPower / 5));
}

-(void)bullRush:(Unit *)f
{
    f.defensePower = f.defensePower - (self.attackPower / 5);
    f.healthPoints = f.healthPoints - (self.attackPower / 10);
    NSLog(@"You bull rush your opponent dealing %u damage and reducing their defense power by %u", (self.attackPower / 10), (self.attackPower / 5));
}

-(void)dirtyTrick:(Unit *)f
{
    f.magicPower = f.magicPower - 5 * self.level;
    f.attackPower = f.attackPower - 5 * self.level;
    f.defensePower = f.defensePower - 5 * self.level;
    f.healthPoints = f.healthPoints -  (5 * self.level);
    NSLog(@"Sh-sh-SHA! POCKET SAND! You reduce your opponents magic power, attack power, and defense by %u", (5 * self.level));
}

-(void)backstab:(Unit *)f
{
    int critMultiplier = arc4random()%5 + self.level;
    f.healthPoints = f.healthPoints - (self.attackPower/2)*critMultiplier;
    if (critMultiplier > 0) {
        NSLog(@"You backstab your opponent dealing %u damage",(self.attackPower/2)*critMultiplier);
    } else {
        NSLog(@"You attempted to backstab your opponent but missed");
    }
}
@end
