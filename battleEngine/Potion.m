//
//  Potion.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Potion.h"

@implementation Potion

- (Potion *)initPotion:(NSInteger)size withType:(NSInteger)type {
    
    // creates a potion with Type and Size (also generated the name from this
    self = [super init];
    if (self) {
        _potionType = type;//[[Item type] objectAtIndex:type];
        _potionSize = size;//[[Item sizes] objectAtIndex:size];
        
        NSString * name = [NSString stringWithFormat:@"%@ %@Potion", [[Item sizes] objectAtIndex:size], [[Item type] objectAtIndex:type]];
        [self uniqueName:name];
    }
    return self;
}
- (id)init
{
    return [self initPotion:0 withType:0 ];
}

- (void) useItemOn: (Unit *) unit {
    //Acts upon the unit passed in, and action is based on the unit being passed in.
    NSLog(@"THe potion type is: %@", [[Item type] objectAtIndex:self.potionType]);
    
    if ( self.potionType == Health ) {
        //checks to see if resulting health is greater than max health and if it is, it sets player hitpoints to max hitpoints
        NSUInteger val = [self changeStatsUpper:75 andLower:75];
        ( (unit.healthPoints + val) > unit.maxHealthPoints ) ? (unit.healthPoints = unit.maxHealthPoints) : (unit.healthPoints += val);
    }
    else if (self.potionType == Mana ){
        unit.manaPoints += 100;
    }
    else if (self.potionType == Defense){
        unit.magicDefense += 50;
    }
    else
        NSLog(@"Unknow potion type, error");
}

- (NSUInteger) changeStatsUpper: (NSUInteger) upperBound andLower: (NSUInteger) lowerBound {
    
    NSUInteger stat = arc4random_uniform((int)upperBound)+ lowerBound;
    NSLog(@"Heals for: %lu", stat);
    
    return stat;
    
}

@end
