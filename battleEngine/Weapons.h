//
//  Weapons.h
//  battleEngine
//
//  Created by Louis Tur on 12/17/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Equipment.h"

@interface Weapons : Equipment

@property (nonatomic) NSUInteger weaponType;
@property (nonatomic) NSUInteger weaponSlots;
@property (nonatomic, strong) NSMutableDictionary * weaponNameArray;

typedef enum weaponTypeGuide{
    oneHanded = 0,
    twoHanded = 1,
    
    sword = 2,
    hammer = 3,
    staff = 4,
    bow = 5,
    mace = 6,
    shield = 7,
} weaponType;

+ (NSArray *) returnWeaponType;

@end
