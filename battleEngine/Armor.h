//
//  Armor.h
//  battleEngine
//
//  Created by Louis Tur on 12/22/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Equipment.h"

@interface Armor : Equipment

typedef enum armorTypes {
    cloth,
    wool,
    iron,
    steel,
    mythril,
    dragonScale,
} armorTypes;

@end
