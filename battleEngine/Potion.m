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
        _potionType = [[Item type] objectAtIndex:type];
        _potionSize = [[Item sizes] objectAtIndex:size];
        NSString * name = [NSString stringWithFormat:@"%@ %@Potion", _potionType, _potionSize];
        [self uniqueName:name];
    }
    return self;
}
- (id)init
{
    return [self initPotion:0 withType:0 ];
}
- (void)use: (Unit *) unit {
    
}


@end
