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


@end
