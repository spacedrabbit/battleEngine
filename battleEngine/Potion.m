//
//  Potion.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

/* Consider having a generic method that creates a pot object with a size and type, but from the size and type it creates 2 sets of values:
    Set 1: % (buff/debuff) from stats
    Set 2: +/- absolute number from stats
    
    Set one would be used for buff status effects (in conjunction with the skills class) while set two would alter player stats statically for health/mana pots
 */

#import "Potion.h"

@implementation Potion

- (Potion *)initPotionType:(NSInteger)type ofSize:(NSInteger)size{
    
    // creates a potion with Type and Size (also generated the name from this
    self = [super init];
    if (self) {
        _potionType = type;//[[Item type] objectAtIndex:type];
        _potionSize = size;//[[Item sizes] objectAtIndex:size];
        
        NSString * name = [NSString stringWithFormat:@"%@ %@ Potion", [[Item sizes] objectAtIndex:size], [[Item type] objectAtIndex:type]];
        [self uniqueName:name];
    }
    return self;
}
- (id)init
{
    return [self initPotionType:Health ofSize:Lesser];
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
        NSRange manaRange = self.potionSizes.titanPotion; // how can I make this better here
        NSUInteger healsFor = [self changeStatsUpper:manaRange.length andLower:manaRange.location];
        NSLog(@"The mana potion gives you %lu mana", healsFor);
        //needs maxMana bounds checking
    }
    else if (self.potionType == Defense){
        unit.magicDefense += 50;
        //need stat randomization
        //does not need bounds checking, stat stacks
    }
    else
        NSLog(@"Unknow potion type, error");
}

- (NSUInteger) changeStatsUpper: (NSUInteger) upperBound andLower: (NSUInteger) lowerBound {
    
    NSUInteger stat = arc4random_uniform((int)upperBound)+ lowerBound;
    NSLog(@"Mana Points Recovered: %lu", stat);
    
    return stat;
    
}

@end
