//
//  Equipment.h
//  battleEngine
//
//  Created by Louis Tur on 12/22/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Item.h"

@interface Equipment : Item

@property (nonatomic) NSUInteger itemSlot;

typedef enum slotType {
    headSlot,
    bracersSlot,
    glovesSlot,
    chestSlot,
    legsSlot,
    bootsSlot,
    trinket1Slot,
    trinket2Slot,
    neckSlot,
    backSlot,
    weapon1Slot,
    weapon2Slot,
    weapon1And2slot,
} slotType;

@end
