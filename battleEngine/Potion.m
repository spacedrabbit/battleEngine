//
//  Potion.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Potion.h"

@implementation Potion

- (Potion *)initPotion:(NSInteger)size withType:(NSInteger) type {
    
    self = [super init];
    if (self) {
        _potionType = type;//[[Item type] objectAtIndex:type];
        _potionSize = size;//[[Item sizes] objectAtIndex:size];
        NSString * name = [NSString stringWithFormat:@"%@ %@Potion", [[Item type] objectAtIndex:size], [[Item sizes] objectAtIndex:type]];
        [self uniqueName:name];
    }
    return self;
}
- (id)init
{
    return [self initPotion:0 withType:0 ];
}
- (void)use: (Unit *) unit {
    
    unit.healthPoints += 100;
}


@end
