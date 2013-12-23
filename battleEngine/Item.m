//
//  Item.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Item.h"

@implementation Item

- (id)init
{
    self = [super init];
    if (self) {
        _potionSizes.lesserPotion = LESSER;
        _potionSizes.minorPotion = MINOR;
        _potionSizes.normalPotion = NORMAL;
        _potionSizes.greaterPotion = GREATER;
        _potionSizes.titanPotion = TITAN;
    }
    return self;
}

- (void) uniqueName:(NSString *)name {
    _name = name;
}

+ (NSArray *) weaponWordBank {
    return @[@"Pheonix", @"Iron", @"Felblade", @"Orcrish", @"Broad", @"Dildo", @"Red Bull", @"Poland Spring", @"Coke"];
}

+ (NSArray *) bagMaterials {
    return @[@"Linen",@"Wool",@"Mageweave",@"Netherweave",@"Rune"];
}

+ (NSArray *) sizes {
    return @[@"Minor",@"Lesser", @"", @"Greater", @"Titan"];
}

+ (NSArray *) type {
    return @[@"Health",@"Mana",@"Defense"];
}
+ (NSArray *)equipmentStats {
    return @[@"Health Points", @"Mana Points", @"Physical Damage", @"Magic Damage", @"Magic Resist", @"Physical Resist", @"Speed"];
}

@end
