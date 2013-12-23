//
//  Weapons.m
//  battleEngine
//
//  Created by Louis Tur on 12/17/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Weapons.h"

@implementation Weapons

- (id)init
{
    self = [super init];
    if (self) {
        _weaponType = sword;
        _weaponSlots = oneHanded;
        self.itemSlot = weapon1Slot;
    }
    return self;
}

+ (NSArray *) returnWeaponType{
    
    return @[@"One-Handed", @"Two-Handed", @"Sword", @"Hammer",@"Staff",@"Bow",@"Mace",@"Shield"];
}

@end
