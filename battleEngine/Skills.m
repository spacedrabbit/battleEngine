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
    f.healthPoints = f.healthPoints - (15 + self.magicPower) - (2 * self.level) + f.magicDefense;
    self.manaPoints = self.manaPoints - 10;
}

-(void)fireball:(Unit *)f
{
    int critMultiplier = arc4random()%5;
    f.healthPoints = f.healthPoints - (self.magicPower + 10 * critMultiplier) + f.magicDefense;
    self.manaPoints = self.manaPoints - 20;
}

-(void)disarm:(Unit *)f
{
    
}
@end
