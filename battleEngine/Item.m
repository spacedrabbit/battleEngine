//
//  Item.m
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Item.h"

@implementation Item

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
    return @[@"Minor ",@"Lesser ", @"", @"Greater ", @"Titan "];
}

+ (NSArray *) type {
    return @[@"Heatlh"];
}

@end
