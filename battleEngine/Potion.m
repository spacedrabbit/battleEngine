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
    NSLog(@"THe potion type is: %li", self.potionType);
    if ( self.potionType == Health ) {
        unit.healthPoints += 100;
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

@end
