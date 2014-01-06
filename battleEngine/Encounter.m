//
//  Encounter.m
//  battleEngine
//
//  Created by Louis Tur on 12/23/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Encounter.h"

@implementation Encounter

- (void)beginEncounterBetween:(Unit *)player and:(Unit *)creature{
    
    if ( !_turnNumber ){
        _turnNumber = 0;
    }
    
    while (player.healthPoints > 0 && creature.healthPoints > 0) {
        // do stuff
        // place code for encounter here
        break;
    }
        
}

- (Container *)generateLoot {
    //create bag, add items, return bag contents
    
    _randomDrop = [[Container alloc] initBagWith:1 withSlots:6];
    Potion * randPotion1 = [[Potion alloc] initPotionType:Health ofSize:Lesser];
    [_randomDrop addItemToBag:randPotion1];
    
    return _randomDrop;
}

@end
