//
//  Sword.m
//  SurviveText
//
//  Created by Louis Tur on 12/8/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//
/*
    This sword class needs to be updated to recognize that it is part of the item class, meaning move the array of valid stats names to the Item class and create an enum for the stats
 
        change arc4randoms to work better with a range
 
 */

#import "Sword.h"

@implementation Sword

- (id)initWeaponType: (NSUInteger) weap inSlots: (NSUInteger) slotOccuied withStats: (NSArray *) statArray withAttackRange:(NSRange)aRange andMagicRange:(NSRange)mRange
{
    self = [super init];
    if (self) {
        
        self.weaponType = weap;
        _weapStats.healthPoints = [statArray[0] integerValue];
        _weapStats.manaPoints = [statArray[1] integerValue];
        _weapStats.defensePower = [statArray[2] integerValue];
        _weapStats.magicDefense = [statArray[3] integerValue];
        _weapStats.speed = [statArray[4] floatValue];
        
        _weapStats.attackPower = aRange;
        _weapStats.magicPower = mRange;
        
        self.weaponSlots = slotOccuied;//one or two handed, not implemented
        [self generateName];
    }
    return self;
}

- (NSNumber *) randBase: (NSUInteger) base withModifier: (NSUInteger) modifier {
    return [NSNumber numberWithUnsignedLong:(arc4random() % base + modifier) ];
}
- (void) generateName {
    
    NSArray * myArr = [Item weaponWordBank]; //descriptor word
    NSMutableString * newName = [NSMutableString string];
    [newName appendFormat:@"%@ ", [myArr objectAtIndex:(arc4random() % [myArr count] ) ]];
                                 
    //[myArr objectAtIndex:(arc4random() % [myArr count];
    
    self.weaponNameArray = [NSMutableDictionary dictionaryWithObjects:[Weapons returnWeaponType] forKeys:[NSArray arrayWithObjects:@0,@1,@2,@3,@4,@5,@6,@7, nil]];
    
    NSString * oneOrTwoHanded = [self.weaponNameArray objectForKey:[NSNumber numberWithLong: ( self.weaponSlots == weapon1And2slot ? 1 : 0) ]];
    //NSLog(@"One or Two %@", oneOrTwoHanded);
                                                                    
    NSString * weaponClass = [self.weaponNameArray objectForKey:[NSNumber numberWithLong:self.weaponType]];//not working properly
    
    [newName appendString:oneOrTwoHanded];
    [newName appendFormat:@" %@", weaponClass];
    
    [self uniqueName:newName];
    
}
- (NSString *)swordStats {
    
    NSUInteger baseAttack = self.weapStats.attackPower.location;
    NSUInteger maxAttack = baseAttack + self.weapStats.attackPower.length;
    
    NSUInteger baseMagicAttack = self.weapStats.magicPower.location;
    NSUInteger maxMagicAttack = baseAttack + self.weapStats.magicPower.length;
    
    NSMutableString * final = [NSMutableString  stringWithFormat:@"Attack Range: %lu - %lu", (baseAttack > 0) ? baseAttack : baseMagicAttack, (baseAttack >0)?maxAttack : maxMagicAttack];//determines whether the weapon is Damage or Magic based. 
    [final appendFormat:@"\nHP: %lu\nMP: %lu\nDef: %lu\nMag Def: %lu\nSpd: %.2f", self.weapStats.healthPoints, self.weapStats.manaPoints, self.weapStats.defensePower, self.weapStats.magicDefense, self.weapStats.speed];
    
    
    return final;
}


@end
