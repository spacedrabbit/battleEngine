//
//  Sword.h
//  SurviveText
//
//  Created by Louis Tur on 12/8/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Weapons.h"

@interface Sword : Weapons

@property (nonatomic, strong) NSDictionary * stats;
@property (nonatomic) statTypes weapStats;

- (id)initWeaponType: (NSUInteger) weap inSlots: (NSUInteger) slotOccuied withStats: (NSArray *) statArray withAttackRange:(NSRange)aRange andMagicRange:(NSRange)mRange;
- (NSString *) swordStats;

@end
